class SmartComputerPlayer < Player
  def get_move(board)
    return 0 if board.empty?
    minimax(board, assigned_token)[:move]
  end

  def minimax(board, player_token)
    return {score: score(board)} if board.game_is_over?

    moves = board.available_spaces
    scores = moves.map do |move|
      board.set_space(move, player_token)
      score = minimax(board, opposite_token(player_token))[:score]
      board.reset_space(move)
      score
    end

    if player_token == assigned_token
      chosen_score = scores.max
    else
      chosen_score = scores.min
    end

    move = moves[scores.index(chosen_score)]

    {score: chosen_score, move: move}
  end

  def score(board)
    if board.winner == assigned_token
      1
    elsif board.winner
      -1
    else
      0
    end
  end

  def opposite_token(token)
    if token == TicTacToeBoard::X_TOKEN
      TicTacToeBoard::O_TOKEN
    else
      TicTacToeBoard::X_TOKEN
    end
  end
end
