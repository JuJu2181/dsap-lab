%vectorized vs nonvectorized component
x=-20:0.2:20;
%vectorized
tic
y=exp(x);
toc
%Elapsed time is 6.29425e-05 seconds.
%non vectorized
y=zeros(1,length(x));
tic
for i=1:length(x)
  y(i)=exp(x(i));
endfor
toc
%Elapsed time is 0.0017941 seconds.
