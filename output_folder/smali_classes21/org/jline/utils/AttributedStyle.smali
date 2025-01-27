.class public Lorg/jline/utils/AttributedStyle;
.super Ljava/lang/Object;
.source "AttributedStyle.java"


# static fields
.field static final BG_COLOR:J = 0x7fffff8000000000L

.field static final BG_COLOR_EXP:I = 0x27

.field public static final BLACK:I = 0x0

.field public static final BLUE:I = 0x4

.field public static final BOLD:Lorg/jline/utils/AttributedStyle;

.field public static final BOLD_OFF:Lorg/jline/utils/AttributedStyle;

.field public static final BRIGHT:I = 0x8

.field public static final CYAN:I = 0x6

.field public static final DEFAULT:Lorg/jline/utils/AttributedStyle;

.field static final FG_COLOR:J = 0x7fffff8000L

.field static final FG_COLOR_EXP:I = 0xf

.field static final F_BACKGROUND:J = 0xc00L

.field static final F_BACKGROUND_IND:J = 0x400L

.field static final F_BACKGROUND_RGB:J = 0x800L

.field static final F_BLINK:J = 0x10L

.field static final F_BOLD:J = 0x1L

.field static final F_CONCEAL:J = 0x40L

.field static final F_CROSSED_OUT:J = 0x80L

.field static final F_FAINT:J = 0x2L

.field static final F_FOREGROUND:J = 0x300L

.field static final F_FOREGROUND_IND:J = 0x100L

.field static final F_FOREGROUND_RGB:J = 0x200L

.field static final F_HIDDEN:J = 0x1000L

.field static final F_INVERSE:J = 0x20L

.field static final F_ITALIC:J = 0x4L

.field static final F_UNDERLINE:J = 0x8L

.field public static final GREEN:I = 0x2

.field public static final HIDDEN:Lorg/jline/utils/AttributedStyle;

.field public static final HIDDEN_OFF:Lorg/jline/utils/AttributedStyle;

.field public static final INVERSE:Lorg/jline/utils/AttributedStyle;

.field public static final INVERSE_OFF:Lorg/jline/utils/AttributedStyle;

.field public static final MAGENTA:I = 0x5

.field static final MASK:J = 0x1fffL

.field public static final RED:I = 0x1

.field public static final WHITE:I = 0x7

.field public static final YELLOW:I = 0x3


# instance fields
.field final mask:J

.field final style:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    new-instance v0, Lorg/jline/utils/AttributedStyle;

    invoke-direct {v0}, Lorg/jline/utils/AttributedStyle;-><init>()V

    sput-object v0, Lorg/jline/utils/AttributedStyle;->DEFAULT:Lorg/jline/utils/AttributedStyle;

    .line 53
    invoke-virtual {v0}, Lorg/jline/utils/AttributedStyle;->bold()Lorg/jline/utils/AttributedStyle;

    move-result-object v1

    sput-object v1, Lorg/jline/utils/AttributedStyle;->BOLD:Lorg/jline/utils/AttributedStyle;

    .line 54
    invoke-virtual {v0}, Lorg/jline/utils/AttributedStyle;->boldOff()Lorg/jline/utils/AttributedStyle;

    move-result-object v1

    sput-object v1, Lorg/jline/utils/AttributedStyle;->BOLD_OFF:Lorg/jline/utils/AttributedStyle;

    .line 55
    invoke-virtual {v0}, Lorg/jline/utils/AttributedStyle;->inverse()Lorg/jline/utils/AttributedStyle;

    move-result-object v1

    sput-object v1, Lorg/jline/utils/AttributedStyle;->INVERSE:Lorg/jline/utils/AttributedStyle;

    .line 56
    invoke-virtual {v0}, Lorg/jline/utils/AttributedStyle;->inverseOff()Lorg/jline/utils/AttributedStyle;

    move-result-object v1

    sput-object v1, Lorg/jline/utils/AttributedStyle;->INVERSE_OFF:Lorg/jline/utils/AttributedStyle;

    .line 57
    invoke-virtual {v0}, Lorg/jline/utils/AttributedStyle;->hidden()Lorg/jline/utils/AttributedStyle;

    move-result-object v1

    sput-object v1, Lorg/jline/utils/AttributedStyle;->HIDDEN:Lorg/jline/utils/AttributedStyle;

    .line 58
    invoke-virtual {v0}, Lorg/jline/utils/AttributedStyle;->hiddenOff()Lorg/jline/utils/AttributedStyle;

    move-result-object v0

    sput-object v0, Lorg/jline/utils/AttributedStyle;->HIDDEN_OFF:Lorg/jline/utils/AttributedStyle;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 64
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, v0, v1}, Lorg/jline/utils/AttributedStyle;-><init>(JJ)V

    .line 65
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 6
    .param p1, "style"    # J
    .param p3, "mask"    # J

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-wide p1, p0, Lorg/jline/utils/AttributedStyle;->style:J

    .line 73
    const-wide/16 v0, 0x1fff

    and-long/2addr v0, p3

    const-wide/16 v2, 0x300

    and-long/2addr v2, p1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const-wide v2, 0x7fffff8000L

    goto :goto_0

    :cond_0
    move-wide v2, v4

    :goto_0
    or-long/2addr v0, v2

    .line 74
    const-wide/16 v2, 0xc00

    and-long/2addr v2, p1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const-wide v4, 0x7fffff8000000000L

    :cond_1
    or-long/2addr v0, v4

    iput-wide v0, p0, Lorg/jline/utils/AttributedStyle;->mask:J

    .line 75
    return-void
.end method

.method public constructor <init>(Lorg/jline/utils/AttributedStyle;)V
    .locals 4
    .param p1, "s"    # Lorg/jline/utils/AttributedStyle;

    .line 68
    iget-wide v0, p1, Lorg/jline/utils/AttributedStyle;->style:J

    iget-wide v2, p1, Lorg/jline/utils/AttributedStyle;->mask:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/jline/utils/AttributedStyle;-><init>(JJ)V

    .line 69
    return-void
.end method


# virtual methods
.method public background(I)Lorg/jline/utils/AttributedStyle;
    .locals 9
    .param p1, "color"    # I

    .line 199
    new-instance v0, Lorg/jline/utils/AttributedStyle;

    iget-wide v1, p0, Lorg/jline/utils/AttributedStyle;->style:J

    const-wide v3, -0x7fffff8000000001L    # -2.71615461243E-312

    and-long/2addr v1, v3

    const-wide/16 v3, 0x400

    or-long/2addr v1, v3

    int-to-long v5, p1

    const/16 v7, 0x27

    shl-long/2addr v5, v7

    const-wide v7, 0x7fffff8000000000L

    and-long/2addr v5, v7

    or-long/2addr v1, v5

    iget-wide v5, p0, Lorg/jline/utils/AttributedStyle;->mask:J

    or-long/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jline/utils/AttributedStyle;-><init>(JJ)V

    return-object v0
.end method

.method public background(III)Lorg/jline/utils/AttributedStyle;
    .locals 2
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I

    .line 203
    shl-int/lit8 v0, p1, 0x10

    shl-int/lit8 v1, p2, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, p3

    invoke-virtual {p0, v0}, Lorg/jline/utils/AttributedStyle;->backgroundRgb(I)Lorg/jline/utils/AttributedStyle;

    move-result-object v0

    return-object v0
.end method

.method public backgroundDefault()Lorg/jline/utils/AttributedStyle;
    .locals 7

    .line 215
    new-instance v0, Lorg/jline/utils/AttributedStyle;

    iget-wide v1, p0, Lorg/jline/utils/AttributedStyle;->style:J

    const-wide v3, -0x7fffff8000000001L    # -2.71615461243E-312

    and-long/2addr v1, v3

    const-wide/16 v3, -0xc01

    and-long/2addr v1, v3

    iget-wide v3, p0, Lorg/jline/utils/AttributedStyle;->mask:J

    const-wide v5, -0x7fffff8000000c01L    # -2.716154597253E-312

    and-long/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jline/utils/AttributedStyle;-><init>(JJ)V

    return-object v0
.end method

.method public backgroundOff()Lorg/jline/utils/AttributedStyle;
    .locals 7

    .line 211
    new-instance v0, Lorg/jline/utils/AttributedStyle;

    iget-wide v1, p0, Lorg/jline/utils/AttributedStyle;->style:J

    const-wide v3, -0x7fffff8000000001L    # -2.71615461243E-312

    and-long/2addr v1, v3

    const-wide/16 v3, -0xc01

    and-long/2addr v1, v3

    iget-wide v3, p0, Lorg/jline/utils/AttributedStyle;->mask:J

    const-wide/16 v5, 0xc00

    or-long/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jline/utils/AttributedStyle;-><init>(JJ)V

    return-object v0
.end method

.method public backgroundRgb(I)Lorg/jline/utils/AttributedStyle;
    .locals 9
    .param p1, "color"    # I

    .line 207
    new-instance v0, Lorg/jline/utils/AttributedStyle;

    iget-wide v1, p0, Lorg/jline/utils/AttributedStyle;->style:J

    const-wide v3, -0x7fffff8000000001L    # -2.71615461243E-312

    and-long/2addr v1, v3

    const-wide/16 v3, 0x800

    or-long/2addr v1, v3

    int-to-long v5, p1

    const-wide/32 v7, 0xffffff

    and-long/2addr v5, v7

    const/16 v7, 0x27

    shl-long/2addr v5, v7

    const-wide v7, 0x7fffff8000000000L

    and-long/2addr v5, v7

    or-long/2addr v1, v5

    iget-wide v5, p0, Lorg/jline/utils/AttributedStyle;->mask:J

    or-long/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jline/utils/AttributedStyle;-><init>(JJ)V

    return-object v0
.end method

.method public blink()Lorg/jline/utils/AttributedStyle;
    .locals 7

    .line 126
    new-instance v0, Lorg/jline/utils/AttributedStyle;

    iget-wide v1, p0, Lorg/jline/utils/AttributedStyle;->style:J

    const-wide/16 v3, 0x10

    or-long/2addr v1, v3

    iget-wide v5, p0, Lorg/jline/utils/AttributedStyle;->mask:J

    or-long/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jline/utils/AttributedStyle;-><init>(JJ)V

    return-object v0
.end method

.method public blinkDefault()Lorg/jline/utils/AttributedStyle;
    .locals 7

    .line 134
    new-instance v0, Lorg/jline/utils/AttributedStyle;

    iget-wide v1, p0, Lorg/jline/utils/AttributedStyle;->style:J

    const-wide/16 v3, -0x11

    and-long/2addr v1, v3

    iget-wide v5, p0, Lorg/jline/utils/AttributedStyle;->mask:J

    and-long/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jline/utils/AttributedStyle;-><init>(JJ)V

    return-object v0
.end method

.method public blinkOff()Lorg/jline/utils/AttributedStyle;
    .locals 7

    .line 130
    new-instance v0, Lorg/jline/utils/AttributedStyle;

    iget-wide v1, p0, Lorg/jline/utils/AttributedStyle;->style:J

    const-wide/16 v3, -0x11

    and-long/2addr v1, v3

    iget-wide v3, p0, Lorg/jline/utils/AttributedStyle;->mask:J

    const-wide/16 v5, 0x10

    or-long/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jline/utils/AttributedStyle;-><init>(JJ)V

    return-object v0
.end method

.method public bold()Lorg/jline/utils/AttributedStyle;
    .locals 7

    .line 78
    new-instance v0, Lorg/jline/utils/AttributedStyle;

    iget-wide v1, p0, Lorg/jline/utils/AttributedStyle;->style:J

    const-wide/16 v3, 0x1

    or-long/2addr v1, v3

    iget-wide v5, p0, Lorg/jline/utils/AttributedStyle;->mask:J

    or-long/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jline/utils/AttributedStyle;-><init>(JJ)V

    return-object v0
.end method

.method public boldDefault()Lorg/jline/utils/AttributedStyle;
    .locals 7

    .line 86
    new-instance v0, Lorg/jline/utils/AttributedStyle;

    iget-wide v1, p0, Lorg/jline/utils/AttributedStyle;->style:J

    const-wide/16 v3, -0x2

    and-long/2addr v1, v3

    iget-wide v5, p0, Lorg/jline/utils/AttributedStyle;->mask:J

    and-long/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jline/utils/AttributedStyle;-><init>(JJ)V

    return-object v0
.end method

.method public boldOff()Lorg/jline/utils/AttributedStyle;
    .locals 7

    .line 82
    new-instance v0, Lorg/jline/utils/AttributedStyle;

    iget-wide v1, p0, Lorg/jline/utils/AttributedStyle;->style:J

    const-wide/16 v3, -0x2

    and-long/2addr v1, v3

    iget-wide v3, p0, Lorg/jline/utils/AttributedStyle;->mask:J

    const-wide/16 v5, 0x1

    or-long/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jline/utils/AttributedStyle;-><init>(JJ)V

    return-object v0
.end method

.method public conceal()Lorg/jline/utils/AttributedStyle;
    .locals 7

    .line 155
    new-instance v0, Lorg/jline/utils/AttributedStyle;

    iget-wide v1, p0, Lorg/jline/utils/AttributedStyle;->style:J

    const-wide/16 v3, 0x40

    or-long/2addr v1, v3

    iget-wide v5, p0, Lorg/jline/utils/AttributedStyle;->mask:J

    or-long/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jline/utils/AttributedStyle;-><init>(JJ)V

    return-object v0
.end method

.method public concealDefault()Lorg/jline/utils/AttributedStyle;
    .locals 7

    .line 163
    new-instance v0, Lorg/jline/utils/AttributedStyle;

    iget-wide v1, p0, Lorg/jline/utils/AttributedStyle;->style:J

    const-wide/16 v3, -0x41

    and-long/2addr v1, v3

    iget-wide v5, p0, Lorg/jline/utils/AttributedStyle;->mask:J

    and-long/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jline/utils/AttributedStyle;-><init>(JJ)V

    return-object v0
.end method

.method public concealOff()Lorg/jline/utils/AttributedStyle;
    .locals 7

    .line 159
    new-instance v0, Lorg/jline/utils/AttributedStyle;

    iget-wide v1, p0, Lorg/jline/utils/AttributedStyle;->style:J

    const-wide/16 v3, -0x41

    and-long/2addr v1, v3

    iget-wide v3, p0, Lorg/jline/utils/AttributedStyle;->mask:J

    const-wide/16 v5, 0x40

    or-long/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jline/utils/AttributedStyle;-><init>(JJ)V

    return-object v0
.end method

.method public crossedOut()Lorg/jline/utils/AttributedStyle;
    .locals 7

    .line 167
    new-instance v0, Lorg/jline/utils/AttributedStyle;

    iget-wide v1, p0, Lorg/jline/utils/AttributedStyle;->style:J

    const-wide/16 v3, 0x80

    or-long/2addr v1, v3

    iget-wide v5, p0, Lorg/jline/utils/AttributedStyle;->mask:J

    or-long/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jline/utils/AttributedStyle;-><init>(JJ)V

    return-object v0
.end method

.method public crossedOutDefault()Lorg/jline/utils/AttributedStyle;
    .locals 7

    .line 175
    new-instance v0, Lorg/jline/utils/AttributedStyle;

    iget-wide v1, p0, Lorg/jline/utils/AttributedStyle;->style:J

    const-wide/16 v3, -0x81

    and-long/2addr v1, v3

    iget-wide v5, p0, Lorg/jline/utils/AttributedStyle;->mask:J

    and-long/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jline/utils/AttributedStyle;-><init>(JJ)V

    return-object v0
.end method

.method public crossedOutOff()Lorg/jline/utils/AttributedStyle;
    .locals 7

    .line 171
    new-instance v0, Lorg/jline/utils/AttributedStyle;

    iget-wide v1, p0, Lorg/jline/utils/AttributedStyle;->style:J

    const-wide/16 v3, -0x81

    and-long/2addr v1, v3

    iget-wide v3, p0, Lorg/jline/utils/AttributedStyle;->mask:J

    const-wide/16 v5, 0x80

    or-long/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jline/utils/AttributedStyle;-><init>(JJ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 247
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 248
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 249
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/jline/utils/AttributedStyle;

    .line 250
    .local v2, "that":Lorg/jline/utils/AttributedStyle;
    iget-wide v3, p0, Lorg/jline/utils/AttributedStyle;->style:J

    iget-wide v5, v2, Lorg/jline/utils/AttributedStyle;->style:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    return v1

    .line 251
    :cond_2
    iget-wide v3, p0, Lorg/jline/utils/AttributedStyle;->mask:J

    iget-wide v5, v2, Lorg/jline/utils/AttributedStyle;->mask:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    .line 248
    .end local v2    # "that":Lorg/jline/utils/AttributedStyle;
    :cond_4
    :goto_1
    return v1
.end method

.method public faint()Lorg/jline/utils/AttributedStyle;
    .locals 7

    .line 90
    new-instance v0, Lorg/jline/utils/AttributedStyle;

    iget-wide v1, p0, Lorg/jline/utils/AttributedStyle;->style:J

    const-wide/16 v3, 0x2

    or-long/2addr v1, v3

    iget-wide v5, p0, Lorg/jline/utils/AttributedStyle;->mask:J

    or-long/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jline/utils/AttributedStyle;-><init>(JJ)V

    return-object v0
.end method

.method public faintDefault()Lorg/jline/utils/AttributedStyle;
    .locals 7

    .line 98
    new-instance v0, Lorg/jline/utils/AttributedStyle;

    iget-wide v1, p0, Lorg/jline/utils/AttributedStyle;->style:J

    const-wide/16 v3, -0x3

    and-long/2addr v1, v3

    iget-wide v5, p0, Lorg/jline/utils/AttributedStyle;->mask:J

    and-long/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jline/utils/AttributedStyle;-><init>(JJ)V

    return-object v0
.end method

.method public faintOff()Lorg/jline/utils/AttributedStyle;
    .locals 7

    .line 94
    new-instance v0, Lorg/jline/utils/AttributedStyle;

    iget-wide v1, p0, Lorg/jline/utils/AttributedStyle;->style:J

    const-wide/16 v3, -0x3

    and-long/2addr v1, v3

    iget-wide v3, p0, Lorg/jline/utils/AttributedStyle;->mask:J

    const-wide/16 v5, 0x2

    or-long/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jline/utils/AttributedStyle;-><init>(JJ)V

    return-object v0
.end method

.method public foreground(I)Lorg/jline/utils/AttributedStyle;
    .locals 9
    .param p1, "color"    # I

    .line 179
    new-instance v0, Lorg/jline/utils/AttributedStyle;

    iget-wide v1, p0, Lorg/jline/utils/AttributedStyle;->style:J

    const-wide v3, -0x7fffff8001L

    and-long/2addr v1, v3

    const-wide/16 v3, 0x100

    or-long/2addr v1, v3

    int-to-long v5, p1

    const/16 v7, 0xf

    shl-long/2addr v5, v7

    const-wide v7, 0x7fffff8000L

    and-long/2addr v5, v7

    or-long/2addr v1, v5

    iget-wide v5, p0, Lorg/jline/utils/AttributedStyle;->mask:J

    or-long/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jline/utils/AttributedStyle;-><init>(JJ)V

    return-object v0
.end method

.method public foreground(III)Lorg/jline/utils/AttributedStyle;
    .locals 2
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I

    .line 183
    shl-int/lit8 v0, p1, 0x10

    shl-int/lit8 v1, p2, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, p3

    invoke-virtual {p0, v0}, Lorg/jline/utils/AttributedStyle;->foregroundRgb(I)Lorg/jline/utils/AttributedStyle;

    move-result-object v0

    return-object v0
.end method

.method public foregroundDefault()Lorg/jline/utils/AttributedStyle;
    .locals 7

    .line 195
    new-instance v0, Lorg/jline/utils/AttributedStyle;

    iget-wide v1, p0, Lorg/jline/utils/AttributedStyle;->style:J

    const-wide v3, -0x7fffff8001L

    and-long/2addr v1, v3

    const-wide/16 v3, -0x301

    and-long/2addr v1, v3

    iget-wide v3, p0, Lorg/jline/utils/AttributedStyle;->mask:J

    const-wide v5, -0x7fffff8301L

    and-long/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jline/utils/AttributedStyle;-><init>(JJ)V

    return-object v0
.end method

.method public foregroundOff()Lorg/jline/utils/AttributedStyle;
    .locals 7

    .line 191
    new-instance v0, Lorg/jline/utils/AttributedStyle;

    iget-wide v1, p0, Lorg/jline/utils/AttributedStyle;->style:J

    const-wide v3, -0x7fffff8001L

    and-long/2addr v1, v3

    const-wide/16 v3, -0x301

    and-long/2addr v1, v3

    iget-wide v3, p0, Lorg/jline/utils/AttributedStyle;->mask:J

    const-wide/16 v5, 0x300

    or-long/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jline/utils/AttributedStyle;-><init>(JJ)V

    return-object v0
.end method

.method public foregroundRgb(I)Lorg/jline/utils/AttributedStyle;
    .locals 9
    .param p1, "color"    # I

    .line 187
    new-instance v0, Lorg/jline/utils/AttributedStyle;

    iget-wide v1, p0, Lorg/jline/utils/AttributedStyle;->style:J

    const-wide v3, -0x7fffff8001L

    and-long/2addr v1, v3

    const-wide/16 v3, 0x200

    or-long/2addr v1, v3

    int-to-long v5, p1

    const-wide/32 v7, 0xffffff

    and-long/2addr v5, v7

    const/16 v7, 0xf

    shl-long/2addr v5, v7

    const-wide v7, 0x7fffff8000L

    and-long/2addr v5, v7

    or-long/2addr v1, v5

    iget-wide v5, p0, Lorg/jline/utils/AttributedStyle;->mask:J

    or-long/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jline/utils/AttributedStyle;-><init>(JJ)V

    return-object v0
.end method

.method public getMask()J
    .locals 2

    .line 242
    iget-wide v0, p0, Lorg/jline/utils/AttributedStyle;->mask:J

    return-wide v0
.end method

.method public getStyle()J
    .locals 2

    .line 238
    iget-wide v0, p0, Lorg/jline/utils/AttributedStyle;->style:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 257
    iget-wide v0, p0, Lorg/jline/utils/AttributedStyle;->style:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lorg/jline/utils/AttributedStyle;->mask:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public hidden()Lorg/jline/utils/AttributedStyle;
    .locals 7

    .line 226
    new-instance v0, Lorg/jline/utils/AttributedStyle;

    iget-wide v1, p0, Lorg/jline/utils/AttributedStyle;->style:J

    const-wide/16 v3, 0x1000

    or-long/2addr v1, v3

    iget-wide v5, p0, Lorg/jline/utils/AttributedStyle;->mask:J

    or-long/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jline/utils/AttributedStyle;-><init>(JJ)V

    return-object v0
.end method

.method public hiddenDefault()Lorg/jline/utils/AttributedStyle;
    .locals 7

    .line 234
    new-instance v0, Lorg/jline/utils/AttributedStyle;

    iget-wide v1, p0, Lorg/jline/utils/AttributedStyle;->style:J

    const-wide/16 v3, -0x1001

    and-long/2addr v1, v3

    iget-wide v5, p0, Lorg/jline/utils/AttributedStyle;->mask:J

    and-long/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jline/utils/AttributedStyle;-><init>(JJ)V

    return-object v0
.end method

.method public hiddenOff()Lorg/jline/utils/AttributedStyle;
    .locals 7

    .line 230
    new-instance v0, Lorg/jline/utils/AttributedStyle;

    iget-wide v1, p0, Lorg/jline/utils/AttributedStyle;->style:J

    const-wide/16 v3, -0x1001

    and-long/2addr v1, v3

    iget-wide v3, p0, Lorg/jline/utils/AttributedStyle;->mask:J

    const-wide/16 v5, 0x1000

    or-long/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jline/utils/AttributedStyle;-><init>(JJ)V

    return-object v0
.end method

.method public inverse()Lorg/jline/utils/AttributedStyle;
    .locals 7

    .line 138
    new-instance v0, Lorg/jline/utils/AttributedStyle;

    iget-wide v1, p0, Lorg/jline/utils/AttributedStyle;->style:J

    const-wide/16 v3, 0x20

    or-long/2addr v1, v3

    iget-wide v5, p0, Lorg/jline/utils/AttributedStyle;->mask:J

    or-long/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jline/utils/AttributedStyle;-><init>(JJ)V

    return-object v0
.end method

.method public inverseDefault()Lorg/jline/utils/AttributedStyle;
    .locals 7

    .line 151
    new-instance v0, Lorg/jline/utils/AttributedStyle;

    iget-wide v1, p0, Lorg/jline/utils/AttributedStyle;->style:J

    const-wide/16 v3, -0x21

    and-long/2addr v1, v3

    iget-wide v5, p0, Lorg/jline/utils/AttributedStyle;->mask:J

    and-long/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jline/utils/AttributedStyle;-><init>(JJ)V

    return-object v0
.end method

.method public inverseNeg()Lorg/jline/utils/AttributedStyle;
    .locals 8

    .line 142
    iget-wide v0, p0, Lorg/jline/utils/AttributedStyle;->style:J

    const-wide/16 v2, 0x20

    and-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    const-wide/16 v4, -0x21

    and-long/2addr v0, v4

    goto :goto_0

    :cond_0
    or-long/2addr v0, v2

    .line 143
    .local v0, "s":J
    :goto_0
    new-instance v4, Lorg/jline/utils/AttributedStyle;

    iget-wide v5, p0, Lorg/jline/utils/AttributedStyle;->mask:J

    or-long/2addr v2, v5

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/jline/utils/AttributedStyle;-><init>(JJ)V

    return-object v4
.end method

.method public inverseOff()Lorg/jline/utils/AttributedStyle;
    .locals 7

    .line 147
    new-instance v0, Lorg/jline/utils/AttributedStyle;

    iget-wide v1, p0, Lorg/jline/utils/AttributedStyle;->style:J

    const-wide/16 v3, -0x21

    and-long/2addr v1, v3

    iget-wide v3, p0, Lorg/jline/utils/AttributedStyle;->mask:J

    const-wide/16 v5, 0x20

    or-long/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jline/utils/AttributedStyle;-><init>(JJ)V

    return-object v0
.end method

.method public italic()Lorg/jline/utils/AttributedStyle;
    .locals 7

    .line 102
    new-instance v0, Lorg/jline/utils/AttributedStyle;

    iget-wide v1, p0, Lorg/jline/utils/AttributedStyle;->style:J

    const-wide/16 v3, 0x4

    or-long/2addr v1, v3

    iget-wide v5, p0, Lorg/jline/utils/AttributedStyle;->mask:J

    or-long/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jline/utils/AttributedStyle;-><init>(JJ)V

    return-object v0
.end method

.method public italicDefault()Lorg/jline/utils/AttributedStyle;
    .locals 7

    .line 110
    new-instance v0, Lorg/jline/utils/AttributedStyle;

    iget-wide v1, p0, Lorg/jline/utils/AttributedStyle;->style:J

    const-wide/16 v3, -0x5

    and-long/2addr v1, v3

    iget-wide v5, p0, Lorg/jline/utils/AttributedStyle;->mask:J

    and-long/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jline/utils/AttributedStyle;-><init>(JJ)V

    return-object v0
.end method

.method public italicOff()Lorg/jline/utils/AttributedStyle;
    .locals 7

    .line 106
    new-instance v0, Lorg/jline/utils/AttributedStyle;

    iget-wide v1, p0, Lorg/jline/utils/AttributedStyle;->style:J

    const-wide/16 v3, -0x5

    and-long/2addr v1, v3

    iget-wide v3, p0, Lorg/jline/utils/AttributedStyle;->mask:J

    const-wide/16 v5, 0x4

    or-long/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jline/utils/AttributedStyle;-><init>(JJ)V

    return-object v0
.end method

.method public toAnsi()Ljava/lang/String;
    .locals 4

    .line 261
    new-instance v0, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v0}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    .line 262
    .local v0, "sb":Lorg/jline/utils/AttributedStringBuilder;
    const-string v1, " "

    invoke-virtual {v0, p0, v1}, Lorg/jline/utils/AttributedStringBuilder;->styled(Lorg/jline/utils/AttributedStyle;Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 263
    sget-object v1, Lorg/jline/utils/AttributedCharSequence$ForceMode;->None:Lorg/jline/utils/AttributedCharSequence$ForceMode;

    const/high16 v2, 0x1000000

    invoke-virtual {v0, v2, v1}, Lorg/jline/utils/AttributedStringBuilder;->toAnsi(ILorg/jline/utils/AttributedCharSequence$ForceMode;)Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    const/4 v2, 0x2

    const/16 v3, 0x6d

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AttributedStyle{style="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/jline/utils/AttributedStyle;->style:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/jline/utils/AttributedStyle;->mask:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ansi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 272
    invoke-virtual {p0}, Lorg/jline/utils/AttributedStyle;->toAnsi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 269
    return-object v0
.end method

.method public underline()Lorg/jline/utils/AttributedStyle;
    .locals 7

    .line 114
    new-instance v0, Lorg/jline/utils/AttributedStyle;

    iget-wide v1, p0, Lorg/jline/utils/AttributedStyle;->style:J

    const-wide/16 v3, 0x8

    or-long/2addr v1, v3

    iget-wide v5, p0, Lorg/jline/utils/AttributedStyle;->mask:J

    or-long/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jline/utils/AttributedStyle;-><init>(JJ)V

    return-object v0
.end method

.method public underlineDefault()Lorg/jline/utils/AttributedStyle;
    .locals 7

    .line 122
    new-instance v0, Lorg/jline/utils/AttributedStyle;

    iget-wide v1, p0, Lorg/jline/utils/AttributedStyle;->style:J

    const-wide/16 v3, -0x9

    and-long/2addr v1, v3

    iget-wide v5, p0, Lorg/jline/utils/AttributedStyle;->mask:J

    and-long/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jline/utils/AttributedStyle;-><init>(JJ)V

    return-object v0
.end method

.method public underlineOff()Lorg/jline/utils/AttributedStyle;
    .locals 7

    .line 118
    new-instance v0, Lorg/jline/utils/AttributedStyle;

    iget-wide v1, p0, Lorg/jline/utils/AttributedStyle;->style:J

    const-wide/16 v3, -0x9

    and-long/2addr v1, v3

    iget-wide v3, p0, Lorg/jline/utils/AttributedStyle;->mask:J

    const-wide/16 v5, 0x8

    or-long/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jline/utils/AttributedStyle;-><init>(JJ)V

    return-object v0
.end method
