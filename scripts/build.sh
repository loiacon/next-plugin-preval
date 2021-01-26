echo Cleaning…
rm -rf dist

echo Compiling JS…
npx babel \
  --ignore "src/**/*.test.ts","src/**/*.d.ts"\
  --source-maps true \
  --extensions .ts,.js \
  --out-dir dist \
  ./src

echo Compling types…
npx tsc
cp ./src/index.d.ts ./dist/index.d.ts