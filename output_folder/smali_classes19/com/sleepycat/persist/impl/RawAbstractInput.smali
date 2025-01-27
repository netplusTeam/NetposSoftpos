.class abstract Lcom/sleepycat/persist/impl/RawAbstractInput;
.super Lcom/sleepycat/persist/impl/AbstractInput;
.source "RawAbstractInput.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private converted:Ljava/util/IdentityHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 33
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/persist/impl/Catalog;ZLjava/util/IdentityHashMap;)V
    .locals 0
    .param p1, "catalog"    # Lcom/sleepycat/persist/impl/Catalog;
    .param p2, "rawAccess"    # Z
    .param p3, "converted"    # Ljava/util/IdentityHashMap;

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/persist/impl/AbstractInput;-><init>(Lcom/sleepycat/persist/impl/Catalog;Z)V

    .line 41
    iput-object p3, p0, Lcom/sleepycat/persist/impl/RawAbstractInput;->converted:Ljava/util/IdentityHashMap;

    .line 42
    return-void
.end method

.method static checkRawType(Lcom/sleepycat/persist/impl/Catalog;Ljava/lang/Object;Lcom/sleepycat/persist/impl/Format;)Lcom/sleepycat/persist/impl/Format;
    .locals 4
    .param p0, "catalog"    # Lcom/sleepycat/persist/impl/Catalog;
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "declaredFormat"    # Lcom/sleepycat/persist/impl/Format;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 151
    if-eqz p2, :cond_5

    .line 153
    instance-of v0, p1, Lcom/sleepycat/persist/raw/RawObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 154
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/persist/raw/RawObject;

    invoke-virtual {v0}, Lcom/sleepycat/persist/raw/RawObject;->getType()Lcom/sleepycat/persist/raw/RawType;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/persist/impl/Format;

    .line 156
    .local v0, "format":Lcom/sleepycat/persist/impl/Format;
    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/Format;->getId()I

    move-result v2

    invoke-interface {p0, v2, v1}, Lcom/sleepycat/persist/impl/Catalog;->getFormat(IZ)Lcom/sleepycat/persist/impl/Format;

    move-result-object v0

    goto :goto_0

    .line 158
    .end local v0    # "format":Lcom/sleepycat/persist/impl/Format;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p0, v0, v1}, Lcom/sleepycat/persist/impl/Catalog;->getFormat(Ljava/lang/Class;Z)Lcom/sleepycat/persist/impl/Format;

    move-result-object v0

    .line 160
    .restart local v0    # "format":Lcom/sleepycat/persist/impl/Format;
    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/Format;->isSimple()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/Format;->isEnum()Z

    move-result v1

    if-nez v1, :cond_4

    .line 166
    :goto_0
    invoke-virtual {v0, p2}, Lcom/sleepycat/persist/impl/Format;->isAssignableTo(Lcom/sleepycat/persist/impl/Format;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 172
    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/Format;->isCurrentVersion()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 178
    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/Format;->getProxiedFormat()Lcom/sleepycat/persist/impl/Format;

    move-result-object v1

    .line 179
    .local v1, "proxiedFormat":Lcom/sleepycat/persist/impl/Format;
    if-eqz v1, :cond_1

    .line 180
    move-object v0, v1

    .line 182
    :cond_1
    return-object v0

    .line 173
    .end local v1    # "proxiedFormat":Lcom/sleepycat/persist/impl/Format;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raw type version is not current.  Class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 175
    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/Format;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 176
    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/Format;->getVersion()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 167
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a subtype of the field\'s declared class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 169
    invoke-virtual {p2}, Lcom/sleepycat/persist/impl/Format;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 170
    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/Format;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 161
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a RawObject or a non-enum simple type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 163
    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/Format;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 151
    .end local v0    # "format":Lcom/sleepycat/persist/impl/Format;
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method checkAndConvert(Ljava/lang/Object;Lcom/sleepycat/persist/impl/Format;)Ljava/lang/Object;
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "declaredFormat"    # Lcom/sleepycat/persist/impl/Format;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 85
    if-nez p1, :cond_1

    .line 86
    invoke-virtual {p2}, Lcom/sleepycat/persist/impl/Format;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A primitive type may not be null or missing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 89
    invoke-virtual {p2}, Lcom/sleepycat/persist/impl/Format;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_1
    invoke-virtual {p2}, Lcom/sleepycat/persist/impl/Format;->isSimple()Z

    move-result v0

    const-string v1, "Raw value class: "

    if-eqz v0, :cond_5

    .line 92
    invoke-virtual {p2}, Lcom/sleepycat/persist/impl/Format;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 93
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 94
    invoke-virtual {p2}, Lcom/sleepycat/persist/impl/Format;->getWrapperFormat()Lcom/sleepycat/persist/impl/Format;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/persist/impl/Format;->getType()Ljava/lang/Class;

    move-result-object v2

    if-ne v0, v2, :cond_2

    goto/16 :goto_3

    .line 95
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 96
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be the wrapper class for a primitive type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 98
    invoke-virtual {p2}, Lcom/sleepycat/persist/impl/Format;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sleepycat/persist/impl/Format;->getType()Ljava/lang/Class;

    move-result-object v2

    if-ne v0, v2, :cond_4

    goto/16 :goto_3

    .line 102
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 103
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be the declared class for a simple type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 105
    invoke-virtual {p2}, Lcom/sleepycat/persist/impl/Format;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_5
    instance-of v0, p1, Lcom/sleepycat/persist/raw/RawObject;

    if-eqz v0, :cond_a

    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "o2":Ljava/lang/Object;
    iget-boolean v2, p0, Lcom/sleepycat/persist/impl/RawAbstractInput;->rawAccess:Z

    if-nez v2, :cond_7

    .line 112
    iget-object v2, p0, Lcom/sleepycat/persist/impl/RawAbstractInput;->converted:Ljava/util/IdentityHashMap;

    if-eqz v2, :cond_6

    .line 113
    invoke-virtual {v2, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 115
    :cond_6
    new-instance v2, Ljava/util/IdentityHashMap;

    invoke-direct {v2}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v2, p0, Lcom/sleepycat/persist/impl/RawAbstractInput;->converted:Ljava/util/IdentityHashMap;

    .line 118
    :cond_7
    :goto_0
    if-eqz v0, :cond_8

    .line 119
    move-object p1, v0

    goto :goto_1

    .line 121
    :cond_8
    iget-boolean v2, p0, Lcom/sleepycat/persist/impl/RawAbstractInput;->rawAccess:Z

    if-nez v2, :cond_9

    .line 122
    iget-object v2, p0, Lcom/sleepycat/persist/impl/RawAbstractInput;->catalog:Lcom/sleepycat/persist/impl/Catalog;

    move-object v3, p1

    check-cast v3, Lcom/sleepycat/persist/raw/RawObject;

    iget-object v4, p0, Lcom/sleepycat/persist/impl/RawAbstractInput;->converted:Ljava/util/IdentityHashMap;

    invoke-interface {v2, v3, v4}, Lcom/sleepycat/persist/impl/Catalog;->convertRawObject(Lcom/sleepycat/persist/raw/RawObject;Ljava/util/IdentityHashMap;)Ljava/lang/Object;

    move-result-object p1

    .line 125
    .end local v0    # "o2":Ljava/lang/Object;
    :cond_9
    :goto_1
    goto :goto_2

    .line 126
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/persist/impl/SimpleCatalog;->isSimpleType(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 132
    :goto_2
    iget-boolean v0, p0, Lcom/sleepycat/persist/impl/RawAbstractInput;->rawAccess:Z

    if-eqz v0, :cond_b

    .line 133
    iget-object v0, p0, Lcom/sleepycat/persist/impl/RawAbstractInput;->catalog:Lcom/sleepycat/persist/impl/Catalog;

    invoke-static {v0, p1, p2}, Lcom/sleepycat/persist/impl/RawAbstractInput;->checkRawType(Lcom/sleepycat/persist/impl/Catalog;Ljava/lang/Object;Lcom/sleepycat/persist/impl/Format;)Lcom/sleepycat/persist/impl/Format;

    goto :goto_3

    .line 135
    :cond_b
    invoke-virtual {p2}, Lcom/sleepycat/persist/impl/Format;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 143
    :goto_3
    return-object p1

    .line 136
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 137
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not assignable to type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 139
    invoke-virtual {p2}, Lcom/sleepycat/persist/impl/Format;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 128
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be RawObject a simple type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readArrayLength()I
    .locals 1

    .line 69
    invoke-static {}, Lcom/sleepycat/compat/DbCompat;->unexpectedState()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public readBigInteger()Ljava/math/BigInteger;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 250
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/RawAbstractInput;->readNext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    return-object v0
.end method

.method public readBoolean()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 202
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/RawAbstractInput;->readNext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public readByte()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 208
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/RawAbstractInput;->readNext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method public readChar()C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 196
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/RawAbstractInput;->readNext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    return v0
.end method

.method public readEnumConstant([Ljava/lang/String;)I
    .locals 1
    .param p1, "names"    # [Ljava/lang/String;

    .line 73
    invoke-static {}, Lcom/sleepycat/compat/DbCompat;->unexpectedState()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public readInt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 220
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/RawAbstractInput;->readNext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public readKeyObject(Lcom/sleepycat/persist/impl/Format;)Ljava/lang/Object;
    .locals 1
    .param p1, "format"    # Lcom/sleepycat/persist/impl/Format;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/RawAbstractInput;->readNext()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readLong()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 226
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/RawAbstractInput;->readNext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method abstract readNext()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation
.end method

.method public readObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/RawAbstractInput;->readNext()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readShort()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 214
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/RawAbstractInput;->readNext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    return v0
.end method

.method public readSortedBigDecimal()Ljava/math/BigDecimal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 244
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/RawAbstractInput;->readNext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigDecimal;

    return-object v0
.end method

.method public readSortedDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 238
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/RawAbstractInput;->readNext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public readSortedFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 232
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/RawAbstractInput;->readNext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public readString()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 190
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/RawAbstractInput;->readNext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public readStringObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/RawAbstractInput;->readNext()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public registerPriKeyObject(Ljava/lang/Object;)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;

    .line 63
    return-void
.end method

.method public registerPriStringKeyObject(Ljava/lang/Object;)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;

    .line 66
    return-void
.end method

.method public skipField(Lcom/sleepycat/persist/impl/Format;)V
    .locals 0
    .param p1, "declaredFormat"    # Lcom/sleepycat/persist/impl/Format;

    .line 77
    return-void
.end method
