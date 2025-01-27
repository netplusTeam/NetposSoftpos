.class public Lcom/sleepycat/je/utilint/StatDefinition;
.super Ljava/lang/Object;
.source "StatDefinition.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/utilint/StatDefinition$StatType;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final description:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final type:Lcom/sleepycat/je/utilint/StatDefinition$StatType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/sleepycat/je/utilint/StatDefinition;->name:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/sleepycat/je/utilint/StatDefinition;->description:Ljava/lang/String;

    .line 50
    sget-object v0, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->INCREMENTAL:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    iput-object v0, p0, Lcom/sleepycat/je/utilint/StatDefinition;->type:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "type"    # Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/sleepycat/je/utilint/StatDefinition;->name:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lcom/sleepycat/je/utilint/StatDefinition;->description:Ljava/lang/String;

    .line 62
    iput-object p3, p0, Lcom/sleepycat/je/utilint/StatDefinition;->type:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    .line 63
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .line 84
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/StatDefinition;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 89
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 90
    return v0

    .line 93
    :cond_0
    instance-of v1, p1, Lcom/sleepycat/je/utilint/StatDefinition;

    if-nez v1, :cond_1

    .line 94
    return v0

    .line 97
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/je/utilint/StatDefinition;

    .line 98
    .local v0, "other":Lcom/sleepycat/je/utilint/StatDefinition;
    iget-object v1, p0, Lcom/sleepycat/je/utilint/StatDefinition;->name:Ljava/lang/String;

    iget-object v2, v0, Lcom/sleepycat/je/utilint/StatDefinition;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/sleepycat/je/utilint/StatDefinition;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/sleepycat/je/utilint/StatDefinition;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/sleepycat/je/utilint/StatDefinition$StatType;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/sleepycat/je/utilint/StatDefinition;->type:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/sleepycat/je/utilint/StatDefinition;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sleepycat/je/utilint/StatDefinition;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/utilint/StatDefinition;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
