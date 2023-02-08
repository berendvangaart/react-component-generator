#!/bin/sh

echo "💾 Create a new React component: $1 💾"

# Create React functional component file
echo "import React from 'react';
import css from ./$1.module.scss

const $1 = () => {
  return (
    <div className={css.container}>
      
    </div>
  );
};

export default $1;" > "$1.js"

echo "✅ Created $1.js file"

# Create SCSS module file
echo ".container {

}" > "$1.module.scss"

echo "✅ Created $1.module.scss file"

echo "✅ All set! "
