function reduced_mat = preprocess(mat, min_reviews)
  # TODO: Remove all user rows from `mat` that have strictly less then `min_reviews` reviews.
  [n m] = size(mat);
  reduced_mat = [];
  for i = 1 : n
    num_nonzero = nnz(mat(i, :));
    if num_nonzero >= min_reviews
        reduced_mat = [reduced_mat; mat(i, :)];
    endif
  endfor
end
