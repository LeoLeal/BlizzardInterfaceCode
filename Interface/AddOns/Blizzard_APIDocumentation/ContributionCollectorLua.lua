local ContributionCollectorLua =
{
	Name = "ContributionCollector",
	Type = "System",
	Namespace = "C_ContributionCollector",

	Functions =
	{
		{
			Name = "CanContribute",
			Type = "Function",

			Arguments =
			{
				{ Name = "contributionID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "isActive", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "Close",
			Type = "Function",
		},
		{
			Name = "Contribute",
			Type = "Function",

			Arguments =
			{
				{ Name = "contributionID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetActive",
			Type = "Function",

			Returns =
			{
				{ Name = "contributionID", Type = "number", Nilable = false, StrideIndex = 1 },
			},
		},
		{
			Name = "GetAtlases",
			Type = "Function",

			Arguments =
			{
				{ Name = "contributionID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "atlasName", Type = "table", InnerType = "string", Nilable = false },
			},
		},
		{
			Name = "GetBuffs",
			Type = "Function",

			Arguments =
			{
				{ Name = "contributionID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "spellID", Type = "number", Nilable = false, StrideIndex = 1 },
			},
		},
		{
			Name = "GetDescription",
			Type = "Function",

			Arguments =
			{
				{ Name = "contributionID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "description", Type = "string", Nilable = false, Default = "" },
			},
		},
		{
			Name = "GetManagedContributionsForCreatureID",
			Type = "Function",

			Arguments =
			{
				{ Name = "creatureID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "contributionID", Type = "number", Nilable = false, StrideIndex = 1 },
			},
		},
		{
			Name = "GetName",
			Type = "Function",

			Arguments =
			{
				{ Name = "contributionID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "name", Type = "string", Nilable = false, Default = "" },
			},
		},
		{
			Name = "GetOrderIndex",
			Type = "Function",

			Arguments =
			{
				{ Name = "contributionID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "orderIndex", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetRequiredContributionAmount",
			Type = "Function",

			Arguments =
			{
				{ Name = "contributionID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "currencyID", Type = "number", Nilable = false, Default = 0 },
				{ Name = "currencyAmount", Type = "number", Nilable = false, Default = 0 },
			},
		},
		{
			Name = "GetRewardQuestID",
			Type = "Function",

			Arguments =
			{
				{ Name = "contributionID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "questID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetState",
			Type = "Function",

			Arguments =
			{
				{ Name = "contributionID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "contributionState", Type = "ContributionState", Nilable = false },
				{ Name = "contributionPercentageComplete", Type = "number", Nilable = false },
				{ Name = "timeOfNextStateChange", Type = "number", Nilable = true },
			},
		},
		{
			Name = "HasPendingContribution",
			Type = "Function",

			Arguments =
			{
				{ Name = "contributionID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "hasPending", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsAwaitingRewardQuestData",
			Type = "Function",

			Arguments =
			{
				{ Name = "contributionID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "awaitingData", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsBuffActive",
			Type = "Function",

			Arguments =
			{
				{ Name = "contributionID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "isActive", Type = "bool", Nilable = false },
			},
		},
	},

	Tables =
	{
		{
			Name = "ContributionState",
			Type = "Enumeration",
			NumValues = 5,
			MinValue = 0,
			MaxValue = 4,
			Fields =
			{
				{ Name = "None", Type = "ContributionState", EnumValue = 0 },
				{ Name = "Building", Type = "ContributionState", EnumValue = 1 },
				{ Name = "Active", Type = "ContributionState", EnumValue = 2 },
				{ Name = "UnderAttack", Type = "ContributionState", EnumValue = 3 },
				{ Name = "Destroyed", Type = "ContributionState", EnumValue = 4 },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(ContributionCollectorLua);