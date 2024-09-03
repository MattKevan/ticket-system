import { NextResponse } from "next/server";
import { getSupabaseCookiesUtilClient } from "@/supabase-utils/cookiesUtilClient";
import { buildUrl } from "@/utils/url-helpers";

export async function POST(request, {params}) {
    // Step 1:
    const formData = await request.formData();
    const email = formData.get("email");
    const password = formData.get("password");
    const tenantUrl = (path) => buildUrl(path, params.tenant, request);

    // Step 2:
    const supabase = getSupabaseCookiesUtilClient();

    // Step 3:
    const { data, error } = await supabase.auth.signInWithPassword({
        email,
        password
    });

    // Step 4:
    const userData = data?.user;
    if (error || !userData) {
        return NextResponse.redirect(tenantUrl("/error?type=login-failed"), {
             status: 302 
        });
    }
    return NextResponse.redirect(tenantUrl("/tickets"), {
        status: 302,
    });
}