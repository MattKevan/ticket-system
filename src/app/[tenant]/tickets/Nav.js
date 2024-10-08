"use client"
import { getSupabaseBrowserClient } from "@/supabase-utils/browserClient";
import { usePathname } from "next/navigation";
import Link from "next/link";
import { useRouter } from "next/navigation";
import { useEffect } from "react";
import { urlPath } from "@/utils/url-helpers";

export default function Nav( {tenant} ) {
    const pathname = usePathname();
    const activeProps = { className: "contrast" };
    const inactiveProps = { className: "secondary outline" };
    const supabase = getSupabaseBrowserClient();
    const router = useRouter();

    useEffect(() => {
        const {
            data: { subscription },
        } = supabase.auth.onAuthStateChange((event, session) => {
            console.log("onAuthStateChange", event);
            if (event === "SIGNED_OUT") {
                router.push(`/${tenant}`);
            }
        });

        return () => subscription.unsubscribe();
    }, []);


    return (
    <nav>
      <ul>
        <li>
            <Link role="button" href={urlPath("/tickets", tenant)}
                {...(pathname === urlPath("/tickets", tenant) ? activeProps : inactiveProps)}>
                Ticket List
            </Link>
        </li>
        <li>
          <Link role="button" href="/tickets/new"
            {...(pathname === "/tickets/new" ? activeProps : inactiveProps)}>
            Create new ticket
          </Link>
        </li>
        <li>
            <Link role="button" href="/tickets/users"
                {...(pathname === "/tickets/users" ? activeProps : inactiveProps)}>
                User list
            </Link>
        </li>
      </ul>
      <ul>
        <li>
          <Link
           role="button"
           href="/logout"
           prefetch={false}
           className="secondary"
           onClick={(event) => {
            event.preventDefault();
            supabase.auth.signOut();
           }}>
            Log out
          </Link>
        </li>
      </ul>
    </nav>
  );
}