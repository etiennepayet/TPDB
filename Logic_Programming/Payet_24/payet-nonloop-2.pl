% The following mode does not terminate.
%query: p(i,i).

p(X, s(s(s(s(s(s(s(Y)))))))) :- p(s(s(s(X))), s(s(s(s(Y))))).
p(X, s(s(s(s(s(s(0))))))) :- p(X, s(s(s(s(s(s(s(s(s(s(s(X)))))))))))).
