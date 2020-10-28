USE `client_refferals`;

INSERT INTO `REFFERAL` (
    `RefferalID`,
    `Casehead`,
    `ServiceRecipient`,
    `ParentPhoneNumber`,
    `ParentAddress`,
    `VisitLocation`,
    `VisitSchedule`,
    `ConfirmationRequired`,
    `CaregiverName`,
    `CaregiverPhoneNumber`,
    `CaregiverAddress`,
    `AdditionalInfo`
)
VALUES
    (
        1,
        'Joe Schmo',
        'Elizabeth Guerrero',
        '2233903708',
        '637 North Ave. Kenosha, WI 67921',
        '637 North Ave. Kenosha, WI 67921',
        'MWF 10:30-11:30',
        1,
        'John Guerrero',
        '782 West Ave. Kenosha, WI 67921',
        'They should be brought to the side door where the door bell works'
    ),
    (
        2,
        'Joe Schmo',
        'Beth Mitchel',
        '6837920123',
        '8392 Jack Ave. Kenosha, WI 67921',
        '637 North Ave. Kenosha, WI 67921',
        'MWF 10:30-11:30',
        0,
        'Josh Kind',
        '9273 Luna Ave. Kenosha, WI 67921',
        ''
    );

INSERT INTO `PARTICIPANT` (
    `RefferalID`,
    `ParticipantName`
)
VALUES
    (
        1,
        'Jeff Dunham'
    ),
    (
        1,
        'Jack Dunham'
    ),
    (
        2,
        'Betty Crocker'
    );


INSERT INTO `CHILD` (
    `RefferalID`,
    `ChildName`,
    `ChildDOB`
)
VALUES
    (
        1,
        'Gregory Guerrero'
    ),
    (
        2,
        'Valerie Mitchel'
    ),
    (
        2,
        'Norm Mitchel'
    );