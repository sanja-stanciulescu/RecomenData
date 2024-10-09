function mat = read_mat(path)
  # TODO: Parse the .csv file and return the matrix of values (without row and column headers).
  %file = fopen(path, 'r');
%   fgetl(file);
%    mat = [];
%    while ~feof(file)
%       line = fgets(file);
%       elements = strsplit(line, ',');
%       row = str2double(elements);
%       row = row(2 : end);
%       mat = [mat; row];
%   endwhile
%   fclose(file);
    mat = csvread(path, 1, 0);
    mat = mat(:, 2 : end);
end
