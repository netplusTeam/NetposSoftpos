.class public Lcom/sleepycat/je/rep/impl/node/NameIdPair;
.super Ljava/lang/Object;
.source "NameIdPair.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/impl/node/NameIdPair$ReadOnlyNameIdPair;
    }
.end annotation


# static fields
.field public static final NOCHECK:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

.field public static final NOCHECK_NODE_ID:I = -0x80000000

.field public static final NULL:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

.field public static final NULL_NODE_ID:I = -0x1

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private id:I

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 62
    new-instance v0, Lcom/sleepycat/je/rep/impl/node/NameIdPair$ReadOnlyNameIdPair;

    const-string v1, "NullNode"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/rep/impl/node/NameIdPair$ReadOnlyNameIdPair;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->NULL:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 65
    new-instance v0, Lcom/sleepycat/je/rep/impl/node/NameIdPair$ReadOnlyNameIdPair;

    const-string v1, "NoCheckNode"

    const/high16 v2, -0x80000000

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/rep/impl/node/NameIdPair$ReadOnlyNameIdPair;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->NOCHECK:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 81
    sget-object v0, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->NULL:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;-><init>(Ljava/lang/String;I)V

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    if-eqz p1, :cond_0

    .line 73
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->name:Ljava/lang/String;

    .line 74
    iput p2, p0, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->id:I

    .line 75
    return-void

    .line 70
    :cond_0
    nop

    .line 71
    const-string v0, "name argument was null"

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public static deserialize(Lcom/sleepycat/bind/tuple/TupleInput;)Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .locals 3
    .param p0, "buffer"    # Lcom/sleepycat/bind/tuple/TupleInput;

    .line 93
    new-instance v0, Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {p0}, Lcom/sleepycat/bind/tuple/TupleInput;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sleepycat/bind/tuple/TupleInput;->readInt()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .locals 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "protocol"    # Lcom/sleepycat/je/rep/utilint/BinaryProtocol;

    .line 87
    new-instance v0, Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {p1, p0}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-static {p0}, Lcom/sleepycat/je/log/LogUtils;->readInt(Ljava/nio/ByteBuffer;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;-><init>(Ljava/lang/String;I)V

    .line 87
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 171
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 172
    return v0

    .line 174
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 175
    return v1

    .line 177
    :cond_1
    instance-of v2, p1, Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    if-nez v2, :cond_2

    .line 178
    return v1

    .line 180
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 181
    .local v2, "other":Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    iget v3, p0, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->id:I

    iget v4, v2, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->id:I

    if-eq v3, v4, :cond_3

    .line 182
    return v1

    .line 184
    :cond_3
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->name:Ljava/lang/String;

    iget-object v3, v2, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 189
    return v0

    .line 185
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ids: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " were equal. But names: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v2, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " weren\'t!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public getId()I
    .locals 1

    .line 129
    iget v0, p0, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hasNullId()Z
    .locals 2

    .line 133
    iget v0, p0, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->id:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 162
    const/16 v0, 0x1f

    .line 163
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 164
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->id:I

    add-int/2addr v2, v3

    .line 165
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->name:Ljava/lang/String;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v1, v3

    .line 166
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public revertToNull()V
    .locals 1

    .line 149
    const/4 v0, -0x1

    iput v0, p0, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->id:I

    .line 150
    return-void
.end method

.method public serialize(Lcom/sleepycat/bind/tuple/TupleOutput;)V
    .locals 1
    .param p1, "buffer"    # Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 104
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeString(Ljava/lang/String;)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 105
    iget v0, p0, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->id:I

    invoke-virtual {p1, v0}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeInt(I)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 106
    return-void
.end method

.method public serialize(Ljava/nio/ByteBuffer;Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)V
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "protocol"    # Lcom/sleepycat/je/rep/utilint/BinaryProtocol;

    .line 98
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->name:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->putString(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 99
    iget v0, p0, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->id:I

    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->writeInt(Ljava/nio/ByteBuffer;I)V

    .line 100
    return-void
.end method

.method public serializedSize(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)I
    .locals 1
    .param p1, "protocol"    # Lcom/sleepycat/je/rep/utilint/BinaryProtocol;

    .line 110
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->stringSize(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public setId(I)V
    .locals 1
    .param p1, "id"    # I

    .line 137
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->setId(IZ)V

    .line 138
    return-void
.end method

.method public setId(IZ)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "checkId"    # Z

    .line 141
    if-eqz p2, :cond_1

    iget v0, p0, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->id:I

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->hasNullId()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Id was already not null: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0

    .line 145
    :cond_1
    :goto_0
    iput p1, p0, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->id:I

    .line 146
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V
    .locals 2
    .param p1, "other"    # Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 153
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->setId(I)V

    .line 158
    return-void

    .line 154
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pair name mismatch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " <> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 155
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method
