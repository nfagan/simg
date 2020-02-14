function start(varargin)

program = simg.task.setup( varargin{:} );
err = [];

try
  simg.task.run( program );
catch err
end

delete( program );

if ( ~isempty(err) )
  rethrow( err );
end

end