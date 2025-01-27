.class public Lbsh/CollectionManager$BasicBshIterator;
.super Ljava/lang/Object;
.source "CollectionManager.java"

# interfaces
.implements Lbsh/BshIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsh/CollectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BasicBshIterator"
.end annotation


# instance fields
.field enumeration:Ljava/util/Enumeration;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "iterateOverMe"    # Ljava/lang/Object;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    invoke-virtual {p0, p1}, Lbsh/CollectionManager$BasicBshIterator;->createEnumeration(Ljava/lang/Object;)Ljava/util/Enumeration;

    move-result-object v0

    iput-object v0, p0, Lbsh/CollectionManager$BasicBshIterator;->enumeration:Ljava/util/Enumeration;

    .line 125
    return-void
.end method


# virtual methods
.method protected createEnumeration(Ljava/lang/Object;)Ljava/util/Enumeration;
    .locals 3
    .param p1, "iterateOverMe"    # Ljava/lang/Object;

    .line 142
    if-eqz p1, :cond_5

    .line 146
    instance-of v0, p1, Ljava/util/Enumeration;

    if-eqz v0, :cond_0

    .line 147
    move-object v0, p1

    check-cast v0, Ljava/util/Enumeration;

    return-object v0

    .line 149
    :cond_0
    instance-of v0, p1, Ljava/util/Vector;

    if-eqz v0, :cond_1

    .line 150
    move-object v0, p1

    check-cast v0, Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0

    .line 152
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 153
    move-object v0, p1

    .line 154
    .local v0, "array":Ljava/lang/Object;
    new-instance v1, Lbsh/CollectionManager$BasicBshIterator$1;

    invoke-direct {v1, p0, v0}, Lbsh/CollectionManager$BasicBshIterator$1;-><init>(Lbsh/CollectionManager$BasicBshIterator;Ljava/lang/Object;)V

    return-object v1

    .line 163
    .end local v0    # "array":Ljava/lang/Object;
    :cond_2
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 164
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0, v0}, Lbsh/CollectionManager$BasicBshIterator;->createEnumeration(Ljava/lang/Object;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0

    .line 166
    :cond_3
    instance-of v0, p1, Ljava/lang/StringBuffer;

    if-eqz v0, :cond_4

    .line 167
    nop

    .line 168
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 167
    invoke-virtual {p0, v0}, Lbsh/CollectionManager$BasicBshIterator;->createEnumeration(Ljava/lang/Object;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0

    .line 170
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot enumerate object of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 171
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Object arguments passed to the BasicBshIterator constructor cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    .line 190
    iget-object v0, p0, Lbsh/CollectionManager$BasicBshIterator;->enumeration:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .line 180
    iget-object v0, p0, Lbsh/CollectionManager$BasicBshIterator;->enumeration:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
