.class public Lorg/apache/commons/collections4/map/ReferenceMap;
.super Lorg/apache/commons/collections4/map/AbstractReferenceMap;
.source "ReferenceMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/map/AbstractReferenceMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1594ca03984908d7L


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 84
    .local p0, "this":Lorg/apache/commons/collections4/map/ReferenceMap;, "Lorg/apache/commons/collections4/map/ReferenceMap<TK;TV;>;"
    sget-object v1, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;->HARD:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    sget-object v2, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;->SOFT:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    const/16 v3, 0x10

    const/high16 v4, 0x3f400000    # 0.75f

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;-><init>(Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;IFZ)V

    .line 86
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;)V
    .locals 6
    .param p1, "keyType"    # Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;
    .param p2, "valueType"    # Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    .line 102
    .local p0, "this":Lorg/apache/commons/collections4/map/ReferenceMap;, "Lorg/apache/commons/collections4/map/ReferenceMap<TK;TV;>;"
    const/16 v3, 0x10

    const/high16 v4, 0x3f400000    # 0.75f

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;-><init>(Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;IFZ)V

    .line 103
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;IF)V
    .locals 6
    .param p1, "keyType"    # Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;
    .param p2, "valueType"    # Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;
    .param p3, "capacity"    # I
    .param p4, "loadFactor"    # F

    .line 142
    .local p0, "this":Lorg/apache/commons/collections4/map/ReferenceMap;, "Lorg/apache/commons/collections4/map/ReferenceMap<TK;TV;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;-><init>(Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;IFZ)V

    .line 143
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;IFZ)V
    .locals 0
    .param p1, "keyType"    # Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;
    .param p2, "valueType"    # Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;
    .param p3, "capacity"    # I
    .param p4, "loadFactor"    # F
    .param p5, "purgeValues"    # Z

    .line 165
    .local p0, "this":Lorg/apache/commons/collections4/map/ReferenceMap;, "Lorg/apache/commons/collections4/map/ReferenceMap<TK;TV;>;"
    invoke-direct/range {p0 .. p5}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;-><init>(Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;IFZ)V

    .line 166
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;Z)V
    .locals 6
    .param p1, "keyType"    # Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;
    .param p2, "valueType"    # Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;
    .param p3, "purgeValues"    # Z

    .line 121
    .local p0, "this":Lorg/apache/commons/collections4/map/ReferenceMap;, "Lorg/apache/commons/collections4/map/ReferenceMap<TK;TV;>;"
    const/16 v3, 0x10

    const/high16 v4, 0x3f400000    # 0.75f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;-><init>(Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;IFZ)V

    .line 122
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 188
    .local p0, "this":Lorg/apache/commons/collections4/map/ReferenceMap;, "Lorg/apache/commons/collections4/map/ReferenceMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 189
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/ReferenceMap;->doReadObject(Ljava/io/ObjectInputStream;)V

    .line 190
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    .local p0, "this":Lorg/apache/commons/collections4/map/ReferenceMap;, "Lorg/apache/commons/collections4/map/ReferenceMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 177
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/ReferenceMap;->doWriteObject(Ljava/io/ObjectOutputStream;)V

    .line 178
    return-void
.end method
