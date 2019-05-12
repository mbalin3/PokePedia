# Define output file. Change "$PROJECT_DIR/Tests" to your test's root source folder, if it's not the default name.

OUTPUT_FILE="$PROJECT_DIR/PokemonVaultTests/Mocks/GeneratedMocks.swift"

echo "Project File: $PROJECT_DIR"
echo "Generated Mocks File = $OUTPUT_FILE"

# Define input directory. Change "$PROJECT_DIR" to your project's root source folder, if it's not the default name.
INPUT_DIR="$PROJECT_DIR"
echo "Mocks Input Directory = $INPUT_DIR"

# Generate mock files, include as many input files as you'd like to create mocks for.
# Please add "$INPUT_DIR/$(find . -name SWIFTFILENAME.swift) below to be mocked out

${PODS_ROOT}/Cuckoo/run generate --testable "$PROJECT_NAME" \
--exclude "PokemonListInteractorCacheDecorator", \
"ServiceClientImplementation" \
--output "${OUTPUT_FILE}" \
"$INPUT_DIR/$(find . -name PokemonDetailsBoundary.swift)" \
"$INPUT_DIR/$(find . -name NetworkSession.swift)" \
"$INPUT_DIR/$(find . -name BaseViewModelDelegate.swift)" \
"$INPUT_DIR/$(find . -name PokemonListBoundary.swift)" \
"$INPUT_DIR/$(find . -name PokemonDetailsInteractorDelegate.swift)" \
"$INPUT_DIR/$(find . -name PokemonListInteractorDelegate.swift)" \
"$INPUT_DIR/$(find . -name AppCache.swift)" \
"$INPUT_DIR/$(find . -name ServiceClient.swift)"

