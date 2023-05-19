local M = {}
		local servers = {
				"clangd"
		}


function M.config() 
		
		local lspconfig = require("lspconfig")	
		local capabilities = require("cmp_nvim_lsp").default_capabilities()
		capabilities.textDocument.completion.completionItem.snippetSupport = true

		for _, lsp in ipairs(servers) do
				lspconfig[lsp].setup({
						on_attach = overrideattach,
						capabilities = capabilities,
				})
		end
end

return M
