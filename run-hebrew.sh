java -Dfile.encoding="UTF-8" -cp bin:lib/* deplambda.others.HebConlluToPipelineInput $1\
| java -Dfile.encoding="UTF-8" -cp bin:lib/* deplambda.others.NlpPipeline `# This pipeline runs semantic parser` \
    annotators tokenize,ssplit \
    tokenize.whitespace true \
    ssplit.eolonly true \
    languageCode en \
    deplambda true \
    deplambda.definedTypesFile lib_data/ud.types.txt \
    deplambda.treeTransformationsFile lib_data/ud-enhancement-rules.proto \
    deplambda.relationPrioritiesFile lib_data/ud-obliqueness-hierarchy.proto  \
    deplambda.lambdaAssignmentRulesFile lib_data/ud-substitution-rules.proto \
    deplambda.lexicalizePredicates true \
    deplambda.debugToFile debug.txt \
    nthreads 1 
