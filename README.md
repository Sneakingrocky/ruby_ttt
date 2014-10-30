Tic-tac-toe
==============

Tic-tac-toe is a simple and classic 2 player game with a lot of history. Over time people have called it by several different names such as "Noughts and crosses" and "Xs and Os". 

Some have even said that “Love is a game of tic-tac-toe, constantly waiting for the next x or o.” But that's not why I wrote this game. The purpose of writing this game was to create an unbeatable ai who I like to call "smartypants".

<h2>What is the goal of a Tic-tac-toe game?</h2>

<p>The player who succeeds in placing three respective marks in a horizontal, vertical, or diagonal row wins the game.</p>


<p>Example of a win:</p>


O | O | O
--- | --- | ---
X | O | X
6 | X | 8
<p>


O Wins, Game over!
</p>


<h2>How do I choose a space on the board?</h2>

<p>Simply type the number of the space you wish to choose into the command line when it is your turn. If you choose a spot that is not available you will see this error: "Space is not available. Please choose a different space."</p>


<p>Example: You want to choose the top right corner: </p>

<code>Type: 2</code>

Tic | Tac | Toe
--- | --- | ---
0 | 1 | 2
3 | 4 | 5
6 | 7 | 8

<h2>How to install the game?</h2>

<ol class="directions">
<li>clone the repository</li>
<code>$ git clone git@github.com:sneakingrocky/Mastermind.git</code>

<li>cd into the directory</li>
<code>
$ cd Mastermind
$ ruby bin/ruby_ttt_game #insert "game option here"</code>
</li>
</ol>

<h2>Game Options:</h2>

<ol class="Game Options">
<li>Human vs Human</li>
<code>$ ruby bin/ruby_ttt_game</code>

<li>Human vs Easy Computer</li>
<code>$ ruby bin/ruby_ttt_game computer</code>

<li>Human vs Smart Computer</li>
<code>$ ruby bin/ruby_ttt_game smartypants</code>

</ol>




