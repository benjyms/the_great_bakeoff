-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/Mitut6
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "bakers" (
    "baker_full" VARCHAR   NOT NULL,
    "age" INT   NOT NULL,
    "occupation" VARCHAR   NOT NULL,
    "hometown" VARCHAR   NOT NULL,
    "season" INT   NOT NULL
);

CREATE TABLE "challenges" (
    "series" INT   NOT NULL,
    "episode" INT   NOT NULL,
    "baker" VARCHAR   NOT NULL,
    "signature" VARCHAR   NOT NULL,
    "technical" INT   NOT NULL,
    "showstopper" VARCHAR   NOT NULL
);

CREATE TABLE "ratings" (
    "series" INT   NOT NULL,
    "episode" INT   NOT NULL,
    "uk_airdate" VARCHAR   NOT NULL,
    "viewers_7day" INT   NOT NULL,
    "viewers_28day" INT   NOT NULL,
    "episode_count" INT   NOT NULL,
    "network_rank" INT   NOT NULL,
    "channel_rank" INT   NOT NULL,
    "bbc_iplayer_requests" INT   NOT NULL
);

CREATE TABLE "results" (
    "series" INT   NOT NULL,
    "episode" INT   NOT NULL,
    "baker" VARCHAR   NOT NULL,
    "result" VARCHAR   NOT NULL
);

CREATE TABLE "outcomes" (
    "season" VARCHAR   NOT NULL,
    "judge" VARCHAR   NOT NULL,
    "week_number" INT   NOT NULL,
    "week_name" VARCHAR   NOT NULL,
    "baker" VARCHAR   NOT NULL,
    "gender" VARCHAR   NOT NULL,
    "age" INT   NOT NULL,
    "signature_handshake" INT   NOT NULL,
    "technical_rank" INT   NOT NULL,
    "showstopper_handshake" INT   NOT NULL,
    "favorite" INT   NOT NULL,
    "least_favorite" INT   NOT NULL,
    "star_baker" INT   NOT NULL,
    "eliminated" INT   NOT NULL,
    "competed" INT   NOT NULL,
    "winner" INT   NOT NULL
);

