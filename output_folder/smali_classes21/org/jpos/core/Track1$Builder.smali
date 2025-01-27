.class public Lorg/jpos/core/Track1$Builder;
.super Ljava/lang/Object;
.source "Track1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/core/Track1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static TRACK1_EXPR:Ljava/lang/String;

.field private static TRACK1_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private cvv:Ljava/lang/String;

.field private discretionaryData:Ljava/lang/String;

.field private exp:Ljava/lang/String;

.field private nameOnCard:Ljava/lang/String;

.field private pan:Ljava/lang/String;

.field private pattern:Ljava/util/regex/Pattern;

.field private serviceCode:Ljava/lang/String;

.field private track:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 115
    const-string v0, "^[%]?[A-Z]+([0-9]{1,19})\\^([^\\^]{2,26})\\^([0-9]{4})([0-9]{3})([0-9]{4})?([0-9]{1,10})?"

    sput-object v0, Lorg/jpos/core/Track1$Builder;->TRACK1_EXPR:Ljava/lang/String;

    .line 116
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jpos/core/Track1$Builder;->TRACK1_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    sget-object v0, Lorg/jpos/core/Track1$Builder;->TRACK1_PATTERN:Ljava/util/regex/Pattern;

    iput-object v0, p0, Lorg/jpos/core/Track1$Builder;->pattern:Ljava/util/regex/Pattern;

    .line 125
    return-void
.end method

.method synthetic constructor <init>(Lorg/jpos/core/Track1$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/jpos/core/Track1$1;

    .line 114
    invoke-direct {p0}, Lorg/jpos/core/Track1$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/jpos/core/Track1$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/jpos/core/Track1$Builder;

    .line 114
    iget-object v0, p0, Lorg/jpos/core/Track1$Builder;->pan:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/jpos/core/Track1$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/jpos/core/Track1$Builder;

    .line 114
    iget-object v0, p0, Lorg/jpos/core/Track1$Builder;->nameOnCard:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lorg/jpos/core/Track1$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/jpos/core/Track1$Builder;

    .line 114
    iget-object v0, p0, Lorg/jpos/core/Track1$Builder;->exp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lorg/jpos/core/Track1$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/jpos/core/Track1$Builder;

    .line 114
    iget-object v0, p0, Lorg/jpos/core/Track1$Builder;->cvv:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lorg/jpos/core/Track1$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/jpos/core/Track1$Builder;

    .line 114
    iget-object v0, p0, Lorg/jpos/core/Track1$Builder;->discretionaryData:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lorg/jpos/core/Track1$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/jpos/core/Track1$Builder;

    .line 114
    iget-object v0, p0, Lorg/jpos/core/Track1$Builder;->serviceCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lorg/jpos/core/Track1$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/jpos/core/Track1$Builder;

    .line 114
    iget-object v0, p0, Lorg/jpos/core/Track1$Builder;->track:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lorg/jpos/core/Track1;
    .locals 1

    .line 190
    new-instance v0, Lorg/jpos/core/Track1;

    invoke-direct {v0, p0}, Lorg/jpos/core/Track1;-><init>(Lorg/jpos/core/Track1$Builder;)V

    return-object v0
.end method

.method public cvv(Ljava/lang/String;)Lorg/jpos/core/Track1$Builder;
    .locals 0
    .param p1, "cvv"    # Ljava/lang/String;

    .line 141
    iput-object p1, p0, Lorg/jpos/core/Track1$Builder;->cvv:Ljava/lang/String;

    return-object p0
.end method

.method public discretionaryData(Ljava/lang/String;)Lorg/jpos/core/Track1$Builder;
    .locals 0
    .param p1, "discretionaryData"    # Ljava/lang/String;

    .line 149
    iput-object p1, p0, Lorg/jpos/core/Track1$Builder;->discretionaryData:Ljava/lang/String;

    .line 150
    return-object p0
.end method

.method public exp(Ljava/lang/String;)Lorg/jpos/core/Track1$Builder;
    .locals 0
    .param p1, "exp"    # Ljava/lang/String;

    .line 137
    iput-object p1, p0, Lorg/jpos/core/Track1$Builder;->exp:Ljava/lang/String;

    return-object p0
.end method

.method public nameOnCard(Ljava/lang/String;)Lorg/jpos/core/Track1$Builder;
    .locals 0
    .param p1, "nameOnCard"    # Ljava/lang/String;

    .line 132
    iput-object p1, p0, Lorg/jpos/core/Track1$Builder;->nameOnCard:Ljava/lang/String;

    .line 133
    return-object p0
.end method

.method public pan(Ljava/lang/String;)Lorg/jpos/core/Track1$Builder;
    .locals 0
    .param p1, "pan"    # Ljava/lang/String;

    .line 128
    iput-object p1, p0, Lorg/jpos/core/Track1$Builder;->pan:Ljava/lang/String;

    return-object p0
.end method

.method public pattern(Ljava/util/regex/Pattern;)Lorg/jpos/core/Track1$Builder;
    .locals 0
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .line 159
    iput-object p1, p0, Lorg/jpos/core/Track1$Builder;->pattern:Ljava/util/regex/Pattern;

    .line 160
    return-object p0
.end method

.method public serviceCode(Ljava/lang/String;)Lorg/jpos/core/Track1$Builder;
    .locals 0
    .param p1, "serviceCode"    # Ljava/lang/String;

    .line 145
    iput-object p1, p0, Lorg/jpos/core/Track1$Builder;->serviceCode:Ljava/lang/String;

    return-object p0
.end method

.method public track(Ljava/lang/String;)Lorg/jpos/core/Track1$Builder;
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/InvalidCardException;
        }
    .end annotation

    .line 166
    if-eqz p1, :cond_5

    .line 169
    iput-object p1, p0, Lorg/jpos/core/Track1$Builder;->track:Ljava/lang/String;

    .line 170
    iget-object v0, p0, Lorg/jpos/core/Track1$Builder;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 171
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    .line 172
    .local v1, "cnt":I
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x2

    if-lt v1, v2, :cond_4

    .line 173
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/jpos/core/Track1$Builder;->pan:Ljava/lang/String;

    .line 174
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/jpos/core/Track1$Builder;->nameOnCard:Ljava/lang/String;

    .line 175
    const/4 v3, 0x3

    if-le v1, v2, :cond_0

    .line 176
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/jpos/core/Track1$Builder;->exp:Ljava/lang/String;

    .line 177
    :cond_0
    const/4 v2, 0x4

    if-le v1, v3, :cond_1

    .line 178
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/jpos/core/Track1$Builder;->serviceCode:Ljava/lang/String;

    .line 179
    :cond_1
    const/4 v3, 0x5

    if-le v1, v2, :cond_2

    .line 180
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/jpos/core/Track1$Builder;->cvv:Ljava/lang/String;

    .line 181
    :cond_2
    if-le v1, v3, :cond_3

    .line 182
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/jpos/core/Track1$Builder;->discretionaryData:Ljava/lang/String;

    .line 186
    :cond_3
    return-object p0

    .line 184
    :cond_4
    new-instance v2, Lorg/jpos/core/InvalidCardException;

    const-string v3, "invalid track1"

    invoke-direct {v2, v3}, Lorg/jpos/core/InvalidCardException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 167
    .end local v0    # "matcher":Ljava/util/regex/Matcher;
    .end local v1    # "cnt":I
    :cond_5
    new-instance v0, Lorg/jpos/core/InvalidCardException;

    const-string v1, "null track1 data"

    invoke-direct {v0, v1}, Lorg/jpos/core/InvalidCardException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
