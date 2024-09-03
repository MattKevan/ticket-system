SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1 (Ubuntu 15.1-1.pgdg20.04+1)
-- Dumped by pg_dump version 15.7 (Ubuntu 15.7-1.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") VALUES
	('00000000-0000-0000-0000-000000000000', '6e716418-ad8b-42fd-a2d9-bb2563c9a29d', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"m@kevan.tv","user_id":"37606031-de0d-4e29-926a-5a7193b893e5","user_phone":""}}', '2024-09-02 08:49:28.565496+00', ''),
	('00000000-0000-0000-0000-000000000000', '6ca2ddc0-7bba-4285-b8bf-8613edd48964', '{"action":"login","actor_id":"37606031-de0d-4e29-926a-5a7193b893e5","actor_username":"m@kevan.tv","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-09-02 08:49:33.693719+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e5ba836c-484b-4d18-95be-f7fdfb7052c2', '{"action":"token_refreshed","actor_id":"37606031-de0d-4e29-926a-5a7193b893e5","actor_username":"m@kevan.tv","actor_via_sso":false,"log_type":"token"}', '2024-09-02 09:50:40.333892+00', ''),
	('00000000-0000-0000-0000-000000000000', '52179862-5ae7-4876-a11d-f977be460481', '{"action":"token_revoked","actor_id":"37606031-de0d-4e29-926a-5a7193b893e5","actor_username":"m@kevan.tv","actor_via_sso":false,"log_type":"token"}', '2024-09-02 09:50:40.335377+00', ''),
	('00000000-0000-0000-0000-000000000000', '1ced3a0c-df54-4ea8-a65c-b62fcd0aa690', '{"action":"logout","actor_id":"37606031-de0d-4e29-926a-5a7193b893e5","actor_username":"m@kevan.tv","actor_via_sso":false,"log_type":"account"}', '2024-09-02 09:50:47.264579+00', ''),
	('00000000-0000-0000-0000-000000000000', '34d6456c-cfee-487d-8c27-c2015fc33207', '{"action":"login","actor_id":"37606031-de0d-4e29-926a-5a7193b893e5","actor_username":"m@kevan.tv","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-09-02 09:51:03.206022+00', ''),
	('00000000-0000-0000-0000-000000000000', '979e8f53-26e2-40bd-a47b-6c4bac9b514a', '{"action":"token_refreshed","actor_id":"37606031-de0d-4e29-926a-5a7193b893e5","actor_username":"m@kevan.tv","actor_via_sso":false,"log_type":"token"}', '2024-09-02 15:23:31.111075+00', ''),
	('00000000-0000-0000-0000-000000000000', '725c96c8-e3e8-4db1-94af-631d0f19cd93', '{"action":"token_revoked","actor_id":"37606031-de0d-4e29-926a-5a7193b893e5","actor_username":"m@kevan.tv","actor_via_sso":false,"log_type":"token"}', '2024-09-02 15:23:31.111997+00', '');


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") VALUES
	('00000000-0000-0000-0000-000000000000', '37606031-de0d-4e29-926a-5a7193b893e5', 'authenticated', 'authenticated', 'm@kevan.tv', '$2a$10$gqmuq5ltZNJgld5ekXA0j.Cz8/16uK7c.ledeDuOHlSLkJs8NHRHm', '2024-09-02 08:49:28.566631+00', NULL, '', NULL, '', NULL, '', '', NULL, '2024-09-02 09:51:03.206406+00', '{"provider": "email", "providers": ["email"]}', '{}', NULL, '2024-09-02 08:49:28.563238+00', '2024-09-02 15:23:31.113546+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false);


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") VALUES
	('37606031-de0d-4e29-926a-5a7193b893e5', '37606031-de0d-4e29-926a-5a7193b893e5', '{"sub": "37606031-de0d-4e29-926a-5a7193b893e5", "email": "m@kevan.tv", "email_verified": false, "phone_verified": false}', 'email', '2024-09-02 08:49:28.564578+00', '2024-09-02 08:49:28.5646+00', '2024-09-02 08:49:28.5646+00', '12fa5c0e-4f48-462a-beb6-2301c5e8b976');


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag") VALUES
	('612adca6-c43c-44d8-9102-369dc4498d83', '37606031-de0d-4e29-926a-5a7193b893e5', '2024-09-02 09:51:03.206441+00', '2024-09-02 15:23:31.114243+00', NULL, 'aal1', NULL, '2024-09-02 15:23:31.1142', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1 Safari/605.1.15', '192.168.228.1', NULL);


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") VALUES
	('612adca6-c43c-44d8-9102-369dc4498d83', '2024-09-02 09:51:03.207481+00', '2024-09-02 09:51:03.207481+00', 'password', 'fd15a8de-c0a3-4cfd-a6aa-67f4c5fc9dd5');


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") VALUES
	('00000000-0000-0000-0000-000000000000', 3, '1EqVIwLIVu-ty5K_j2dO8w', '37606031-de0d-4e29-926a-5a7193b893e5', true, '2024-09-02 09:51:03.206859+00', '2024-09-02 15:23:31.112252+00', NULL, '612adca6-c43c-44d8-9102-369dc4498d83'),
	('00000000-0000-0000-0000-000000000000', 4, '_rE0A56w7bvTN-d2HVWiPQ', '37606031-de0d-4e29-926a-5a7193b893e5', false, '2024-09-02 15:23:31.112777+00', '2024-09-02 15:23:31.112777+00', '1EqVIwLIVu-ty5K_j2dO8w', '612adca6-c43c-44d8-9102-369dc4498d83');


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: key; Type: TABLE DATA; Schema: pgsodium; Owner: supabase_admin
--



--
-- Data for Name: service_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."service_users" ("id", "created_at", "full_name", "supabase_user") VALUES
	(1, '2024-09-02 15:40:14.754374+00', 'Bobby Tables', '37606031-de0d-4e29-926a-5a7193b893e5');


--
-- Data for Name: tenants; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."tenants" ("created_at", "domain", "name", "id") VALUES
	('2024-09-02 15:33:42.207514+00', 'packt.local', 'Packt Publishing', 'packt'),
	('2024-09-02 15:34:28.754426+00', 'activenode.learn', 'Activenode Learning', 'activenode'),
	('2024-09-02 15:35:09.677681+00', 'monkey.learn', 'Monkey Tennis', 'monkey');


--
-- Data for Name: tenant_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."tenant_permissions" ("id", "created_at", "service_user", "tenant") VALUES
	(1, '2024-09-02 15:51:29.486751+00', 1, 'packt'),
	(2, '2024-09-02 15:51:46.373247+00', 1, 'monkey');


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: hooks; Type: TABLE DATA; Schema: supabase_functions; Owner: supabase_functions_admin
--



--
-- Data for Name: secrets; Type: TABLE DATA; Schema: vault; Owner: supabase_admin
--



--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 4, true);


--
-- Name: key_key_id_seq; Type: SEQUENCE SET; Schema: pgsodium; Owner: supabase_admin
--

SELECT pg_catalog.setval('"pgsodium"."key_key_id_seq"', 1, false);


--
-- Name: service_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."service_users_id_seq"', 1, true);


--
-- Name: tenant_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."tenant_permissions_id_seq"', 2, true);


--
-- Name: hooks_id_seq; Type: SEQUENCE SET; Schema: supabase_functions; Owner: supabase_functions_admin
--

SELECT pg_catalog.setval('"supabase_functions"."hooks_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

RESET ALL;
