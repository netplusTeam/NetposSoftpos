.class public Lcom/sleepycat/je/rep/elections/MasterValue;
.super Lcom/sleepycat/je/rep/elections/Protocol$StringValue;
.source "MasterValue.java"


# static fields
.field private static final DELIMITER:Ljava/lang/String; = "$$$"

.field private static final DELIMITER_REGEXP:Ljava/lang/String; = "\\$\\$\\$"

.field private static final masterValueParser:Lcom/sleepycat/je/rep/elections/Protocol$ValueParser;


# instance fields
.field private final hostname:Ljava/lang/String;

.field private final nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

.field private final port:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    new-instance v0, Lcom/sleepycat/je/rep/elections/MasterValue$1;

    invoke-direct {v0}, Lcom/sleepycat/je/rep/elections/MasterValue$1;-><init>()V

    sput-object v0, Lcom/sleepycat/je/rep/elections/MasterValue;->masterValueParser:Lcom/sleepycat/je/rep/elections/Protocol$ValueParser;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "valueString"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/elections/Protocol$StringValue;-><init>(Ljava/lang/String;)V

    .line 46
    const-string v0, "\\$\\$\\$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "tokens":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/sleepycat/je/rep/elections/MasterValue;->hostname:Ljava/lang/String;

    .line 48
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sleepycat/je/rep/elections/MasterValue;->port:I

    .line 49
    new-instance v1, Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    const/4 v2, 0x2

    aget-object v2, v0, v2

    const/4 v3, 0x3

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/elections/MasterValue;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/sleepycat/je/rep/impl/node/NameIdPair;)V
    .locals 3
    .param p1, "masterHostname"    # Ljava/lang/String;
    .param p2, "masterPort"    # I
    .param p3, "masterNameIdPair"    # Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$$$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 37
    invoke-virtual {p3}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 38
    invoke-virtual {p3}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-direct {p0, v0}, Lcom/sleepycat/je/rep/elections/Protocol$StringValue;-><init>(Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Lcom/sleepycat/je/rep/elections/MasterValue;->hostname:Ljava/lang/String;

    .line 40
    iput p2, p0, Lcom/sleepycat/je/rep/elections/MasterValue;->port:I

    .line 41
    iput-object p3, p0, Lcom/sleepycat/je/rep/elections/MasterValue;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 42
    return-void
.end method

.method public static getParser()Lcom/sleepycat/je/rep/elections/Protocol$ValueParser;
    .locals 1

    .line 74
    sget-object v0, Lcom/sleepycat/je/rep/elections/MasterValue;->masterValueParser:Lcom/sleepycat/je/rep/elections/Protocol$ValueParser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 100
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 101
    return v0

    .line 103
    :cond_0
    invoke-super {p0, p1}, Lcom/sleepycat/je/rep/elections/Protocol$StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 104
    return v2

    .line 106
    :cond_1
    instance-of v1, p1, Lcom/sleepycat/je/rep/elections/MasterValue;

    if-nez v1, :cond_2

    .line 107
    return v2

    .line 109
    :cond_2
    move-object v1, p1

    check-cast v1, Lcom/sleepycat/je/rep/elections/MasterValue;

    .line 110
    .local v1, "other":Lcom/sleepycat/je/rep/elections/MasterValue;
    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/MasterValue;->hostname:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 111
    iget-object v3, v1, Lcom/sleepycat/je/rep/elections/MasterValue;->hostname:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 112
    return v2

    .line 114
    :cond_3
    iget-object v4, v1, Lcom/sleepycat/je/rep/elections/MasterValue;->hostname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 115
    return v2

    .line 117
    :cond_4
    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/MasterValue;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    iget-object v4, v1, Lcom/sleepycat/je/rep/elections/MasterValue;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 118
    return v2

    .line 120
    :cond_5
    iget v3, p0, Lcom/sleepycat/je/rep/elections/MasterValue;->port:I

    iget v4, v1, Lcom/sleepycat/je/rep/elections/MasterValue;->port:I

    if-eq v3, v4, :cond_6

    .line 121
    return v2

    .line 123
    :cond_6
    return v0
.end method

.method public getHostName()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/MasterValue;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method public getNameId()Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/MasterValue;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/MasterValue;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/sleepycat/je/rep/elections/MasterValue;->port:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 89
    const/16 v0, 0x1f

    .line 90
    .local v0, "prime":I
    invoke-super {p0}, Lcom/sleepycat/je/rep/elections/Protocol$StringValue;->hashCode()I

    move-result v1

    .line 91
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/MasterValue;->hostname:Ljava/lang/String;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    .line 93
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/MasterValue;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    .line 94
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/sleepycat/je/rep/elections/MasterValue;->port:I

    add-int/2addr v2, v3

    .line 95
    .end local v1    # "result":I
    .restart local v2    # "result":I
    return v2
.end method
