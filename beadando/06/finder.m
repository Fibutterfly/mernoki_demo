%% Header
%{
    Author: Filep Illés Attila (HS3SS4)
    2023/05/14
    HW 6
%}
function res_dict = finder(wrk_array, search_array)
% Summary: It multiplies the find fuction to work with arrays
    keys = [];
    for i = 1:1:length(search_array)
        keys(length(keys) + 1) = find(wrk_array == search_array(i));
    end
    res_dict = dictionary(search_array,keys);
end