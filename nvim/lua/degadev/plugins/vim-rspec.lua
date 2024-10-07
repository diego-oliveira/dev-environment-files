return {
	"thoughtbot/vim-rspec",
	keys = {
		{ "<leader>t", "<cmd>call RunCurrentSpecFile()<cr>", desc = "run current spec" },
		{ "<leader>s", "<cmd>call RunNearestSpec()<cr>", desc = "run nearest spec" },
		{ "<leader>l", "<cmd>call RunLastSpec()<cr>", desc = "run last spec" },
		{ "<leader>a", "<cmd>call RunAllSpecs()<cr>", desc = "run all specs" },
	},
	config = function()
		vim.g.rspec_command = "Dispatch docker-compose exec app env RAILS_ENV=test rspec {spec}"
	end,
}
