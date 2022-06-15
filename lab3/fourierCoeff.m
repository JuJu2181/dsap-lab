function a = fourierCoeff(x)
    N = length(x);
    c = zeros(1,N);
    for k=0:N-1;
        sum  = 0;
        for n=0:N-1; 
            % ? ' is for transpose and j is imaginary variable
            % Without using transpose 
            % sum = sum + x(n+1) * exp((-1)*j*k*((2*pi)/N)*n)';
            % Using transpose
            sum = sum + x(n+1) * exp((-1)*j*k*((2*pi)/N)*n)';
        endfor;
        c(k+1) = (1/N)*sum;
    endfor
    a = c;
endfunction