.class public Lcom/sleepycat/je/JEVersion;
.super Ljava/lang/Object;
.source "JEVersion.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/sleepycat/je/JEVersion;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final CURRENT_VERSION:Lcom/sleepycat/je/JEVersion;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final majorNum:I

.field private final minorNum:I

.field private final name:Ljava/lang/String;

.field private final patchNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 33
    new-instance v0, Lcom/sleepycat/je/JEVersion;

    const/16 v1, 0x12

    const/4 v2, 0x3

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sleepycat/je/JEVersion;-><init>(IIILjava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/JEVersion;->CURRENT_VERSION:Lcom/sleepycat/je/JEVersion;

    return-void
.end method

.method private constructor <init>(IIILjava/lang/String;)V
    .locals 0
    .param p1, "majorNum"    # I
    .param p2, "minorNum"    # I
    .param p3, "patchNum"    # I
    .param p4, "name"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lcom/sleepycat/je/JEVersion;->majorNum:I

    .line 43
    iput p2, p0, Lcom/sleepycat/je/JEVersion;->minorNum:I

    .line 44
    iput p3, p0, Lcom/sleepycat/je/JEVersion;->patchNum:I

    .line 45
    iput-object p4, p0, Lcom/sleepycat/je/JEVersion;->name:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "version"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "."

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .local v0, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sleepycat/je/JEVersion;->majorNum:I

    .line 52
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sleepycat/je/JEVersion;->minorNum:I

    .line 53
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sleepycat/je/JEVersion;->patchNum:I

    .line 54
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/JEVersion;->name:Ljava/lang/String;

    goto :goto_0

    .line 57
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sleepycat/je/JEVersion;->name:Ljava/lang/String;

    .line 59
    :goto_0
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/sleepycat/je/JEVersion;)I
    .locals 3
    .param p1, "comparedVersion"    # Lcom/sleepycat/je/JEVersion;

    .line 129
    const/4 v0, 0x0

    .line 131
    .local v0, "result":I
    iget v1, p0, Lcom/sleepycat/je/JEVersion;->majorNum:I

    invoke-virtual {p1}, Lcom/sleepycat/je/JEVersion;->getMajor()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 132
    iget v1, p0, Lcom/sleepycat/je/JEVersion;->minorNum:I

    invoke-virtual {p1}, Lcom/sleepycat/je/JEVersion;->getMinor()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 133
    iget v1, p0, Lcom/sleepycat/je/JEVersion;->patchNum:I

    invoke-virtual {p1}, Lcom/sleepycat/je/JEVersion;->getPatch()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 134
    const/4 v0, 0x1

    goto :goto_0

    .line 135
    :cond_0
    iget v1, p0, Lcom/sleepycat/je/JEVersion;->patchNum:I

    invoke-virtual {p1}, Lcom/sleepycat/je/JEVersion;->getPatch()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 136
    const/4 v0, -0x1

    goto :goto_0

    .line 138
    :cond_1
    iget v1, p0, Lcom/sleepycat/je/JEVersion;->minorNum:I

    invoke-virtual {p1}, Lcom/sleepycat/je/JEVersion;->getMinor()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 139
    const/4 v0, 0x1

    goto :goto_0

    .line 141
    :cond_2
    const/4 v0, -0x1

    goto :goto_0

    .line 143
    :cond_3
    iget v1, p0, Lcom/sleepycat/je/JEVersion;->majorNum:I

    invoke-virtual {p1}, Lcom/sleepycat/je/JEVersion;->getMajor()I

    move-result v2

    if-le v1, v2, :cond_4

    .line 144
    const/4 v0, 0x1

    goto :goto_0

    .line 146
    :cond_4
    const/4 v0, -0x1

    .line 149
    :cond_5
    :goto_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 26
    check-cast p1, Lcom/sleepycat/je/JEVersion;

    invoke-virtual {p0, p1}, Lcom/sleepycat/je/JEVersion;->compareTo(Lcom/sleepycat/je/JEVersion;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 158
    instance-of v0, p1, Lcom/sleepycat/je/JEVersion;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/sleepycat/je/JEVersion;

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/JEVersion;->compareTo(Lcom/sleepycat/je/JEVersion;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getMajor()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/sleepycat/je/JEVersion;->majorNum:I

    return v0
.end method

.method public getMinor()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/sleepycat/je/JEVersion;->minorNum:I

    return v0
.end method

.method public getNumericVersionString()Ljava/lang/String;
    .locals 3

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .local v0, "version":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/sleepycat/je/JEVersion;->majorNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget v1, p0, Lcom/sleepycat/je/JEVersion;->minorNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget v1, p0, Lcom/sleepycat/je/JEVersion;->patchNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPatch()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/sleepycat/je/JEVersion;->patchNum:I

    return v0
.end method

.method public getVersionString()Ljava/lang/String;
    .locals 3

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .local v0, "version":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/sleepycat/je/JEVersion;->majorNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget v1, p0, Lcom/sleepycat/je/JEVersion;->minorNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget v1, p0, Lcom/sleepycat/je/JEVersion;->patchNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    iget-object v1, p0, Lcom/sleepycat/je/JEVersion;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 117
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget-object v1, p0, Lcom/sleepycat/je/JEVersion;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public hashCode()I
    .locals 2

    .line 164
    iget v0, p0, Lcom/sleepycat/je/JEVersion;->majorNum:I

    mul-int/lit16 v0, v0, 0x3e8

    mul-int/lit16 v0, v0, 0x3e8

    iget v1, p0, Lcom/sleepycat/je/JEVersion;->minorNum:I

    mul-int/lit16 v1, v1, 0x3e8

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sleepycat/je/JEVersion;->patchNum:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/sleepycat/je/JEVersion;->getVersionString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
