context('import_trainset')

test_that('import_trainset with metadata', {
	test_data <- import_trainset(system.file("extdata", "my_input_labeled.csv", package = "sumsarizer"), metadata = system.file("extdata", "metadata.csv", package = "sumsarizer"))
	metadata <- read.csv(system.file("extdata", "metadata.csv", package = "sumsarizer"))
	expect_true(ncol(test_data) > 4)
	expect_true(all(unique(metadata$variable) %in% names(test_data)))
})

test_that('import_trainset without metadata', {
	test_data <- import_trainset(system.file("extdata", "my_input_labeled.csv", package = "sumsarizer"), metadata = NA)
	metadata <- read.csv(system.file("extdata", "metadata.csv", package = "sumsarizer"))
	expect_true(ncol(test_data) == 4)
	expect_false(all(unique(metadata$variable) %in% names(test_data)))
})
