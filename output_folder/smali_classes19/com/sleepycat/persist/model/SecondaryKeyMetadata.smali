.class public Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
.super Lcom/sleepycat/persist/model/FieldMetadata;
.source "SecondaryKeyMetadata.java"


# static fields
.field private static final serialVersionUID:J = 0x70ac3743fd73cb46L


# instance fields
.field private deleteAction:Lcom/sleepycat/persist/model/DeleteAction;

.field private elementClassName:Ljava/lang/String;

.field private keyName:Ljava/lang/String;

.field private relatedEntity:Ljava/lang/String;

.field private relationship:Lcom/sleepycat/persist/model/Relationship;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/persist/model/Relationship;Ljava/lang/String;Lcom/sleepycat/persist/model/DeleteAction;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "declaringClassName"    # Ljava/lang/String;
    .param p4, "elementClassName"    # Ljava/lang/String;
    .param p5, "keyName"    # Ljava/lang/String;
    .param p6, "relationship"    # Lcom/sleepycat/persist/model/Relationship;
    .param p7, "relatedEntity"    # Ljava/lang/String;
    .param p8, "deleteAction"    # Lcom/sleepycat/persist/model/DeleteAction;

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/persist/model/FieldMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iput-object p4, p0, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->elementClassName:Ljava/lang/String;

    .line 59
    iput-object p5, p0, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->keyName:Ljava/lang/String;

    .line 60
    iput-object p6, p0, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->relationship:Lcom/sleepycat/persist/model/Relationship;

    .line 61
    iput-object p7, p0, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->relatedEntity:Ljava/lang/String;

    .line 62
    iput-object p8, p0, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->deleteAction:Lcom/sleepycat/persist/model/DeleteAction;

    .line 63
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 123
    instance-of v0, p1, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 124
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;

    .line 125
    .local v0, "o":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    invoke-super {p0, v0}, Lcom/sleepycat/persist/model/FieldMetadata;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->relationship:Lcom/sleepycat/persist/model/Relationship;

    iget-object v3, v0, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->relationship:Lcom/sleepycat/persist/model/Relationship;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->deleteAction:Lcom/sleepycat/persist/model/DeleteAction;

    iget-object v3, v0, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->deleteAction:Lcom/sleepycat/persist/model/DeleteAction;

    .line 127
    invoke-static {v2, v3}, Lcom/sleepycat/persist/model/ClassMetadata;->nullOrEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->keyName:Ljava/lang/String;

    iget-object v3, v0, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->keyName:Ljava/lang/String;

    .line 128
    invoke-static {v2, v3}, Lcom/sleepycat/persist/model/ClassMetadata;->nullOrEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->elementClassName:Ljava/lang/String;

    iget-object v3, v0, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->elementClassName:Ljava/lang/String;

    .line 129
    invoke-static {v2, v3}, Lcom/sleepycat/persist/model/ClassMetadata;->nullOrEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->relatedEntity:Ljava/lang/String;

    iget-object v3, v0, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->relatedEntity:Ljava/lang/String;

    .line 131
    invoke-static {v2, v3}, Lcom/sleepycat/persist/model/ClassMetadata;->nullOrEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 125
    :goto_0
    return v1

    .line 133
    .end local v0    # "o":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    :cond_1
    return v1
.end method

.method public getDeleteAction()Lcom/sleepycat/persist/model/DeleteAction;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->deleteAction:Lcom/sleepycat/persist/model/DeleteAction;

    return-object v0
.end method

.method public getElementClassName()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->elementClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyName()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->keyName:Ljava/lang/String;

    return-object v0
.end method

.method public getRelatedEntity()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->relatedEntity:Ljava/lang/String;

    return-object v0
.end method

.method public getRelationship()Lcom/sleepycat/persist/model/Relationship;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->relationship:Lcom/sleepycat/persist/model/Relationship;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 139
    invoke-super {p0}, Lcom/sleepycat/persist/model/FieldMetadata;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->relationship:Lcom/sleepycat/persist/model/Relationship;

    .line 140
    invoke-virtual {v1}, Lcom/sleepycat/persist/model/Relationship;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->deleteAction:Lcom/sleepycat/persist/model/DeleteAction;

    .line 141
    invoke-static {v1}, Lcom/sleepycat/persist/model/ClassMetadata;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->keyName:Ljava/lang/String;

    .line 142
    invoke-static {v1}, Lcom/sleepycat/persist/model/ClassMetadata;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->elementClassName:Ljava/lang/String;

    .line 143
    invoke-static {v1}, Lcom/sleepycat/persist/model/ClassMetadata;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->relatedEntity:Ljava/lang/String;

    .line 144
    invoke-static {v1}, Lcom/sleepycat/persist/model/ClassMetadata;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 139
    return v0
.end method
