-- This script was generated by the Schema Diff utility in pgAdmin 4. 
-- For the circular dependencies, the order in which Schema Diff writes the objects is not very sophisticated 
-- and may require manual changes to the script to ensure changes are applied in the correct order.
-- Please report an issue for any failure with the reproduction steps. 
 BEGIN; 
 
DROP TRIGGER IF EXISTS "slack-documents" ON public.tbl_documents;

DROP TRIGGER IF EXISTS "slack-views" ON public.tbl_views;

ALTER TABLE IF EXISTS public.tbl_document_versions
    ALTER COLUMN source_path DROP DEFAULT;

ALTER TABLE IF EXISTS public.tbl_document_versions
    ALTER COLUMN updated_at SET NOT NULL;

DROP TRIGGER IF EXISTS "slack-links" ON public.tbl_links;
DROP TYPE IF EXISTS public.org_role;
ALTER VIEW IF EXISTS public.view_logs
    SET (security_invoker=true);

ALTER VIEW IF EXISTS public.view_documents
    SET (security_invoker=true);


 END;