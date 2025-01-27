.class public Lch/qos/logback/core/pattern/SpacePadder;
.super Ljava/lang/Object;
.source "SpacePadder.java"


# static fields
.field static final SPACES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 18
    const-string v0, " "

    const-string v1, "  "

    const-string v2, "    "

    const-string v3, "        "

    const-string v4, "                "

    const-string v5, "                                "

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lch/qos/logback/core/pattern/SpacePadder;->SPACES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final leftPad(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
    .locals 2
    .param p0, "buf"    # Ljava/lang/StringBuilder;
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "desiredLength"    # I

    .line 24
    const/4 v0, 0x0

    .line 25
    .local v0, "actualLen":I
    if-eqz p1, :cond_0

    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 28
    :cond_0
    if-ge v0, p2, :cond_1

    .line 29
    sub-int v1, p2, v0

    invoke-static {p0, v1}, Lch/qos/logback/core/pattern/SpacePadder;->spacePad(Ljava/lang/StringBuilder;I)V

    .line 31
    :cond_1
    if-eqz p1, :cond_2

    .line 32
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    :cond_2
    return-void
.end method

.method public static final rightPad(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
    .locals 2
    .param p0, "buf"    # Ljava/lang/StringBuilder;
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "desiredLength"    # I

    .line 37
    const/4 v0, 0x0

    .line 38
    .local v0, "actualLen":I
    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 41
    :cond_0
    if-eqz p1, :cond_1

    .line 42
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    :cond_1
    if-ge v0, p2, :cond_2

    .line 45
    sub-int v1, p2, v0

    invoke-static {p0, v1}, Lch/qos/logback/core/pattern/SpacePadder;->spacePad(Ljava/lang/StringBuilder;I)V

    .line 47
    :cond_2
    return-void
.end method

.method public static final spacePad(Ljava/lang/StringBuilder;I)V
    .locals 2
    .param p0, "sbuf"    # Ljava/lang/StringBuilder;
    .param p1, "length"    # I

    .line 53
    :goto_0
    const/16 v0, 0x20

    if-lt p1, v0, :cond_0

    .line 54
    sget-object v0, Lch/qos/logback/core/pattern/SpacePadder;->SPACES:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    add-int/lit8 p1, p1, -0x20

    goto :goto_0

    .line 58
    :cond_0
    const/4 v0, 0x4

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 59
    const/4 v1, 0x1

    shl-int/2addr v1, v0

    and-int/2addr v1, p1

    if-eqz v1, :cond_1

    .line 60
    sget-object v1, Lch/qos/logback/core/pattern/SpacePadder;->SPACES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 63
    .end local v0    # "i":I
    :cond_2
    return-void
.end method
