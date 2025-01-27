.class public Lcom/sleepycat/persist/model/PrimaryKeyMetadata;
.super Lcom/sleepycat/persist/model/FieldMetadata;
.source "PrimaryKeyMetadata.java"


# static fields
.field private static final serialVersionUID:J = 0x28e55cda18caf21aL


# instance fields
.field private sequenceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "declaringClassName"    # Ljava/lang/String;
    .param p4, "sequenceName"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/persist/model/FieldMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iput-object p4, p0, Lcom/sleepycat/persist/model/PrimaryKeyMetadata;->sequenceName:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 60
    instance-of v0, p1, Lcom/sleepycat/persist/model/PrimaryKeyMetadata;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 61
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/persist/model/PrimaryKeyMetadata;

    .line 62
    .local v0, "o":Lcom/sleepycat/persist/model/PrimaryKeyMetadata;
    invoke-super {p0, v0}, Lcom/sleepycat/persist/model/FieldMetadata;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sleepycat/persist/model/PrimaryKeyMetadata;->sequenceName:Ljava/lang/String;

    iget-object v3, v0, Lcom/sleepycat/persist/model/PrimaryKeyMetadata;->sequenceName:Ljava/lang/String;

    .line 63
    invoke-static {v2, v3}, Lcom/sleepycat/persist/model/ClassMetadata;->nullOrEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 62
    :goto_0
    return v1

    .line 65
    .end local v0    # "o":Lcom/sleepycat/persist/model/PrimaryKeyMetadata;
    :cond_1
    return v1
.end method

.method public getSequenceName()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/sleepycat/persist/model/PrimaryKeyMetadata;->sequenceName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 71
    invoke-super {p0}, Lcom/sleepycat/persist/model/FieldMetadata;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/sleepycat/persist/model/PrimaryKeyMetadata;->sequenceName:Ljava/lang/String;

    invoke-static {v1}, Lcom/sleepycat/persist/model/ClassMetadata;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
