#!/bin/bash

mkdir -p build/user/pdf
mkdir -p build/user/html
npx honkit pdf manuals/USER/base build/user/pdf/user.pdf
npx honkit build manuals/USER/base build/user/html/

rm -r build/admin
mkdir -p build/admin/pdf
mkdir -p build/admin/html
npx honkit pdf manuals/ADMIN/base build/admin/pdf/admin.pdf
npx honkit build manuals/ADMIN/base build/admin/html

rm -r build/spec
mkdir -p build/spec/pdf
mkdir -p build/spec/html
npx honkit pdf spec/base build/spec/spec.pdf
npx honkit build spec/base build/spec/html
