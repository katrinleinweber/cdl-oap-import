
-- Table of campus ID -> OAP ID. An OAP-id can link to more than one campus ID, e.g.
-- several eSchol items that get lumped into one OAP.
CREATE TABLE ids (
  campus_id    TEXT PRIMARY KEY NOT NULL,
  oap_id       TEXT NOT NULL
);

CREATE INDEX oap_id ON ids(oap_id);

-- Table of email address -> proprietary ID. A prop-id can link to more than one email, e.g.
-- if a user changes their email address over time.
CREATE TABLE emails (
  email             TEXT PRIMARY KEY NOT NULL,
  proprietary_id    TEXT NOT NULL
);

CREATE INDEX proprietary_id ON emails(proprietary_id);