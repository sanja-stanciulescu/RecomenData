function similarity = cosine_similarity(A, B)
  # TODO: Compute the cosine similarity between two column vectors.
  A = A / norm(A, 2);
  B = B / norm(B, 2);

  similarity = A' * B;
endfunction
