.class Lcom/itextpdf/layout/renderer/AccessibleTypes;
.super Ljava/lang/Object;
.source "AccessibleTypes.java"


# static fields
.field static BlockLevel:I

.field static Grouping:I

.field static Illustration:I

.field static InlineLevel:I

.field static Unknown:I

.field static blockLevelRoles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static groupingRoles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static illustrationRoles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static inlineLevelRoles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 75
    const/4 v0, 0x0

    sput v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->Unknown:I

    .line 76
    const/4 v0, 0x1

    sput v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->Grouping:I

    .line 77
    const/4 v0, 0x2

    sput v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->BlockLevel:I

    .line 78
    const/4 v0, 0x3

    sput v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->InlineLevel:I

    .line 79
    const/4 v0, 0x4

    sput v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->Illustration:I

    .line 81
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->groupingRoles:Ljava/util/Set;

    .line 82
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->blockLevelRoles:Ljava/util/Set;

    .line 83
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->inlineLevelRoles:Ljava/util/Set;

    .line 84
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->illustrationRoles:Ljava/util/Set;

    .line 98
    sget-object v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->groupingRoles:Ljava/util/Set;

    const-string v1, "Part"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->groupingRoles:Ljava/util/Set;

    const-string v1, "Art"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->groupingRoles:Ljava/util/Set;

    const-string v1, "Sect"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->groupingRoles:Ljava/util/Set;

    const-string v1, "Div"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->groupingRoles:Ljava/util/Set;

    const-string v1, "BlockQuote"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->groupingRoles:Ljava/util/Set;

    const-string v1, "Caption"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->groupingRoles:Ljava/util/Set;

    const-string v2, "TOC"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->groupingRoles:Ljava/util/Set;

    const-string v2, "TOCI"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->groupingRoles:Ljava/util/Set;

    const-string v2, "Index"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->groupingRoles:Ljava/util/Set;

    const-string v2, "NonStruct"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 108
    sget-object v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->groupingRoles:Ljava/util/Set;

    const-string v2, "Private"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->groupingRoles:Ljava/util/Set;

    const-string v2, "Aside"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->blockLevelRoles:Ljava/util/Set;

    const-string v2, "P"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->blockLevelRoles:Ljava/util/Set;

    const-string v2, "H"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 113
    sget-object v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->blockLevelRoles:Ljava/util/Set;

    const-string v2, "H1"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->blockLevelRoles:Ljava/util/Set;

    const-string v2, "H2"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->blockLevelRoles:Ljava/util/Set;

    const-string v2, "H3"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->blockLevelRoles:Ljava/util/Set;

    const-string v2, "H4"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 117
    sget-object v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->blockLevelRoles:Ljava/util/Set;

    const-string v2, "H5"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 118
    sget-object v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->blockLevelRoles:Ljava/util/Set;

    const-string v2, "H6"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->blockLevelRoles:Ljava/util/Set;

    const-string v2, "L"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 121
    sget-object v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->blockLevelRoles:Ljava/util/Set;

    const-string v2, "Lbl"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->blockLevelRoles:Ljava/util/Set;

    const-string v2, "LI"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->blockLevelRoles:Ljava/util/Set;

    const-string v2, "LBody"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->blockLevelRoles:Ljava/util/Set;

    const-string v2, "Table"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->blockLevelRoles:Ljava/util/Set;

    const-string v2, "TR"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 126
    sget-object v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->blockLevelRoles:Ljava/util/Set;

    const-string v2, "TH"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 127
    sget-object v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->blockLevelRoles:Ljava/util/Set;

    const-string v2, "TD"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 128
    sget-object v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->blockLevelRoles:Ljava/util/Set;

    const-string v2, "Title"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 129
    sget-object v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->blockLevelRoles:Ljava/util/Set;

    const-string v2, "FENote"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 130
    sget-object v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->blockLevelRoles:Ljava/util/Set;

    const-string v2, "Sub"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 131
    sget-object v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->blockLevelRoles:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 133
    sget-object v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->inlineLevelRoles:Ljava/util/Set;

    const-string v1, "Span"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 134
    sget-object v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->inlineLevelRoles:Ljava/util/Set;

    const-string v1, "Quote"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 135
    sget-object v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->inlineLevelRoles:Ljava/util/Set;

    const-string v1, "Note"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 136
    sget-object v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->inlineLevelRoles:Ljava/util/Set;

    const-string v1, "Reference"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 137
    sget-object v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->inlineLevelRoles:Ljava/util/Set;

    const-string v1, "BibEntry"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 138
    sget-object v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->inlineLevelRoles:Ljava/util/Set;

    const-string v1, "Code"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 139
    sget-object v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->inlineLevelRoles:Ljava/util/Set;

    const-string v1, "Link"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 140
    sget-object v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->inlineLevelRoles:Ljava/util/Set;

    const-string v1, "Annot"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 141
    sget-object v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->inlineLevelRoles:Ljava/util/Set;

    const-string v1, "Ruby"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 142
    sget-object v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->inlineLevelRoles:Ljava/util/Set;

    const-string v1, "Warichu"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 143
    sget-object v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->inlineLevelRoles:Ljava/util/Set;

    const-string v1, "RB"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 144
    sget-object v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->inlineLevelRoles:Ljava/util/Set;

    const-string v1, "RT"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 145
    sget-object v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->inlineLevelRoles:Ljava/util/Set;

    const-string v1, "RP"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 146
    sget-object v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->inlineLevelRoles:Ljava/util/Set;

    const-string v1, "WT"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 147
    sget-object v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->inlineLevelRoles:Ljava/util/Set;

    const-string v1, "WP"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 148
    sget-object v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->inlineLevelRoles:Ljava/util/Set;

    const-string v1, "Em"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 149
    sget-object v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->inlineLevelRoles:Ljava/util/Set;

    const-string v1, "Strong"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 151
    sget-object v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->illustrationRoles:Ljava/util/Set;

    const-string v1, "Figure"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 152
    sget-object v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->illustrationRoles:Ljava/util/Set;

    const-string v1, "Formula"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 153
    sget-object v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->illustrationRoles:Ljava/util/Set;

    const-string v1, "Form"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 154
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static identifyType(Ljava/lang/String;)I
    .locals 1
    .param p0, "role"    # Ljava/lang/String;

    .line 168
    sget-object v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->groupingRoles:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    sget v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->Grouping:I

    return v0

    .line 170
    :cond_0
    sget-object v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->blockLevelRoles:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p0}, Lcom/itextpdf/kernel/pdf/tagging/StandardNamespaces;->isHnRole(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 172
    :cond_1
    sget-object v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->inlineLevelRoles:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 173
    sget v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->InlineLevel:I

    return v0

    .line 174
    :cond_2
    sget-object v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->illustrationRoles:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 175
    sget v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->Illustration:I

    return v0

    .line 178
    :cond_3
    sget v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->Unknown:I

    return v0

    .line 171
    :cond_4
    :goto_0
    sget v0, Lcom/itextpdf/layout/renderer/AccessibleTypes;->BlockLevel:I

    return v0
.end method
