function recoms = recommendations(path, liked_theme, num_recoms, min_reviews, num_features)
  # TODO: Get the best `num_recoms` recommandations similar with 'liked_theme'.
  mat = read_mat(path);
  reduced_mat = preprocess(mat, min_reviews);
  [U, S, V] = svds(reduced_mat, num_features);
  transp = V';
  liked_theme_vector = transp(:, liked_theme);
  similarities = zeros(rows(transp), 1);
  for i = 1 : columns(transp)
    similarities(i) = cosine_similarity(liked_theme_vector, transp(:, i));
  endfor
  [~, indices] = sort(similarities, 'descend');
  indices(indices == liked_theme) = [];
  recoms = indices(1 : num_recoms)';
end
