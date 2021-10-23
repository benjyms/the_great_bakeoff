-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/Mitut6
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "baker" (
    "baker_id" INT   NOT NULL,
    "baker_first" VARCHAR   NOT NULL,
    "baker_last" VARCHAR   NOT NULL,
    "baker_full" VARCHAR   NOT NULL,
    "gender" VARCHAR   NOT NULL,
    "age" INT   NOT NULL,
    "occupation" VARCHAR   NOT NULL,
    "hometown" VARCHAR   NOT NULL,
    "series" INT   NOT NULL,
    CONSTRAINT "pk_baker" PRIMARY KEY (
        "baker_id"
     )
);

CREATE TABLE "challenge" (
    "challenge_id" INT   NOT NULL,
    "episode_id" INT   NOT NULL,
    "baker_id" INT   NOT NULL,
    "signature_desc" VARCHAR   NOT NULL,
    "signature_handshake" BOOLEAN   NOT NULL,
    "technical_rank" INT   NOT NULL,
    "showstopper_desc" VARCHAR   NOT NULL,
    "showstopper_handshake" BOOLEAN   NOT NULL,
    "favorite" BOOLEAN   NOT NULL,
    "least_favorite" BOOLEAN   NOT NULL,
    "result" VARCHAR   NOT NULL,
    CONSTRAINT "pk_challenge" PRIMARY KEY (
        "challenge_id"
     )
);

CREATE TABLE "series" (
    "series" INT   NOT NULL,
    "year" INT   NOT NULL,
    "judge1" INT   NOT NULL,
    "judge2" INT   NOT NULL,
    "host1" INT   NOT NULL,
    "host2" INT   NOT NULL,
    CONSTRAINT "pk_series" PRIMARY KEY (
        "series"
     )
);

CREATE TABLE "episode" (
    "episode_id" INT   NOT NULL,
    "series" INT   NOT NULL,
    "episode" INT   NOT NULL,
    "theme" VARCHAR   NOT NULL,
    CONSTRAINT "pk_episode" PRIMARY KEY (
        "episode_id"
     )
);

CREATE TABLE "rating" (
    "rating_id" INT   NOT NULL,
    "episode_id" INT   NOT NULL,
    "uk_airdate" VARCHAR   NOT NULL,
    "viewers_7day" INT   NOT NULL,
    "viewers_28day" INT   NOT NULL,
    "episode_count" INT   NOT NULL,
    "network_rank" INT   NOT NULL,
    "channel_rank" INT   NOT NULL,
    "bbc_iplayer_requests" INT   NOT NULL,
    CONSTRAINT "pk_rating" PRIMARY KEY (
        "rating_id"
     )
);

CREATE TABLE "judge" (
    "judge_id" INT   NOT NULL,
    "judge_name" VARCHAR   NOT NULL,
    "judge_wiki" VARCHAR   NOT NULL,
    CONSTRAINT "pk_judge" PRIMARY KEY (
        "judge_id"
     )
);

CREATE TABLE "host" (
    "host_id" INT   NOT NULL,
    "host_name" VARCHAR   NOT NULL,
    "host_wiki" VARCHAR   NOT NULL,
    CONSTRAINT "pk_host" PRIMARY KEY (
        "host_id"
     )
);

ALTER TABLE "challenge" ADD CONSTRAINT "fk_challenge_episode_id" FOREIGN KEY("episode_id")
REFERENCES "episode" ("episode_id");

ALTER TABLE "challenge" ADD CONSTRAINT "fk_challenge_baker_id" FOREIGN KEY("baker_id")
REFERENCES "baker" ("baker_id");

ALTER TABLE "series" ADD CONSTRAINT "fk_series_judge1" FOREIGN KEY("judge1")
REFERENCES "judge" ("judge_id");

ALTER TABLE "series" ADD CONSTRAINT "fk_series_judge2" FOREIGN KEY("judge2")
REFERENCES "judge" ("judge_id");

ALTER TABLE "series" ADD CONSTRAINT "fk_series_host1" FOREIGN KEY("host1")
REFERENCES "host" ("host_id");

ALTER TABLE "series" ADD CONSTRAINT "fk_series_host2" FOREIGN KEY("host2")
REFERENCES "host" ("host_id");

ALTER TABLE "episode" ADD CONSTRAINT "fk_episode_series" FOREIGN KEY("series")
REFERENCES "series" ("series");

ALTER TABLE "rating" ADD CONSTRAINT "fk_rating_episode_id" FOREIGN KEY("episode_id")
REFERENCES "episode" ("episode_id");

