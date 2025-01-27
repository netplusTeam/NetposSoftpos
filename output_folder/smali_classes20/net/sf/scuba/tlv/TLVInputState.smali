.class Lnet/sf/scuba/tlv/TLVInputState;
.super Ljava/lang/Object;
.source "TLVInputState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/scuba/tlv/TLVInputState$TLStruct;
    }
.end annotation


# instance fields
.field private isAtStartOfLength:Z

.field private isAtStartOfTag:Z

.field private isReadingValue:Z

.field private state:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lnet/sf/scuba/tlv/TLVInputState$TLStruct;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 54
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Lnet/sf/scuba/tlv/TLVInputState;-><init>(Ljava/util/Deque;ZZZ)V

    .line 55
    return-void
.end method

.method private constructor <init>(Ljava/util/Deque;ZZZ)V
    .locals 0
    .param p2, "isAtStartOfTag"    # Z
    .param p3, "isAtStartOfLength"    # Z
    .param p4, "isReadingValue"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque<",
            "Lnet/sf/scuba/tlv/TLVInputState$TLStruct;",
            ">;ZZZ)V"
        }
    .end annotation

    .line 61
    .local p1, "state":Ljava/util/Deque;, "Ljava/util/Deque<Lnet/sf/scuba/tlv/TLVInputState$TLStruct;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lnet/sf/scuba/tlv/TLVInputState;->state:Ljava/util/Deque;

    .line 63
    iput-boolean p2, p0, Lnet/sf/scuba/tlv/TLVInputState;->isAtStartOfTag:Z

    .line 64
    iput-boolean p3, p0, Lnet/sf/scuba/tlv/TLVInputState;->isAtStartOfLength:Z

    .line 65
    iput-boolean p4, p0, Lnet/sf/scuba/tlv/TLVInputState;->isReadingValue:Z

    .line 66
    return-void
.end method

.method public constructor <init>(Lnet/sf/scuba/tlv/TLVInputState;)V
    .locals 4
    .param p1, "original"    # Lnet/sf/scuba/tlv/TLVInputState;

    .line 58
    invoke-direct {p1}, Lnet/sf/scuba/tlv/TLVInputState;->getDeepCopyOfState()Ljava/util/Deque;

    move-result-object v0

    iget-boolean v1, p1, Lnet/sf/scuba/tlv/TLVInputState;->isAtStartOfTag:Z

    iget-boolean v2, p1, Lnet/sf/scuba/tlv/TLVInputState;->isAtStartOfLength:Z

    iget-boolean v3, p1, Lnet/sf/scuba/tlv/TLVInputState;->isReadingValue:Z

    invoke-direct {p0, v0, v1, v2, v3}, Lnet/sf/scuba/tlv/TLVInputState;-><init>(Ljava/util/Deque;ZZZ)V

    .line 59
    return-void
.end method

.method private getDeepCopyOfState()Ljava/util/Deque;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Deque<",
            "Lnet/sf/scuba/tlv/TLVInputState$TLStruct;",
            ">;"
        }
    .end annotation

    .line 177
    new-instance v0, Ljava/util/ArrayDeque;

    iget-object v1, p0, Lnet/sf/scuba/tlv/TLVInputState;->state:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 178
    .local v0, "newStack":Ljava/util/Deque;, "Ljava/util/Deque<Lnet/sf/scuba/tlv/TLVInputState$TLStruct;>;"
    iget-object v1, p0, Lnet/sf/scuba/tlv/TLVInputState;->state:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;

    .line 179
    .local v2, "tlStruct":Lnet/sf/scuba/tlv/TLVInputState$TLStruct;
    new-instance v3, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;

    invoke-direct {v3, p0, v2}, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;-><init>(Lnet/sf/scuba/tlv/TLVInputState;Lnet/sf/scuba/tlv/TLVInputState$TLStruct;)V

    invoke-interface {v0, v3}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 180
    .end local v2    # "tlStruct":Lnet/sf/scuba/tlv/TLVInputState$TLStruct;
    goto :goto_0

    .line 181
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getLength()I
    .locals 2

    .line 89
    iget-object v0, p0, Lnet/sf/scuba/tlv/TLVInputState;->state:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lnet/sf/scuba/tlv/TLVInputState;->state:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;

    .line 93
    .local v0, "currentObject":Lnet/sf/scuba/tlv/TLVInputState$TLStruct;
    invoke-virtual {v0}, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;->getLength()I

    move-result v1

    return v1

    .line 90
    .end local v0    # "currentObject":Lnet/sf/scuba/tlv/TLVInputState$TLStruct;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Length not yet known."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTag()I
    .locals 2

    .line 81
    iget-object v0, p0, Lnet/sf/scuba/tlv/TLVInputState;->state:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lnet/sf/scuba/tlv/TLVInputState;->state:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;

    .line 85
    .local v0, "currentObject":Lnet/sf/scuba/tlv/TLVInputState$TLStruct;
    invoke-virtual {v0}, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;->getTag()I

    move-result v1

    return v1

    .line 82
    .end local v0    # "currentObject":Lnet/sf/scuba/tlv/TLVInputState$TLStruct;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tag not yet read."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValueBytesLeft()I
    .locals 4

    .line 102
    iget-object v0, p0, Lnet/sf/scuba/tlv/TLVInputState;->state:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lnet/sf/scuba/tlv/TLVInputState;->state:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;

    .line 106
    .local v0, "currentObject":Lnet/sf/scuba/tlv/TLVInputState$TLStruct;
    invoke-virtual {v0}, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;->getLength()I

    move-result v1

    .line 107
    .local v1, "currentLength":I
    invoke-virtual {v0}, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;->getValueBytesProcessed()I

    move-result v2

    .line 108
    .local v2, "valueBytesRead":I
    sub-int v3, v1, v2

    return v3

    .line 103
    .end local v0    # "currentObject":Lnet/sf/scuba/tlv/TLVInputState$TLStruct;
    .end local v1    # "currentLength":I
    .end local v2    # "valueBytesRead":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Length of value is unknown."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValueBytesProcessed()I
    .locals 2

    .line 97
    iget-object v0, p0, Lnet/sf/scuba/tlv/TLVInputState;->state:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;

    .line 98
    .local v0, "currentObject":Lnet/sf/scuba/tlv/TLVInputState$TLStruct;
    invoke-virtual {v0}, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;->getValueBytesProcessed()I

    move-result v1

    return v1
.end method

.method public isAtStartOfLength()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lnet/sf/scuba/tlv/TLVInputState;->isAtStartOfLength:Z

    return v0
.end method

.method public isAtStartOfTag()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lnet/sf/scuba/tlv/TLVInputState;->isAtStartOfTag:Z

    return v0
.end method

.method public isProcessingValue()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lnet/sf/scuba/tlv/TLVInputState;->isReadingValue:Z

    return v0
.end method

.method public setDummyLengthProcessed()V
    .locals 1

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/scuba/tlv/TLVInputState;->isAtStartOfTag:Z

    .line 126
    iput-boolean v0, p0, Lnet/sf/scuba/tlv/TLVInputState;->isAtStartOfLength:Z

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/scuba/tlv/TLVInputState;->isReadingValue:Z

    .line 128
    return-void
.end method

.method public setLengthProcessed(II)V
    .locals 3
    .param p1, "length"    # I
    .param p2, "byteCount"    # I

    .line 131
    if-ltz p1, :cond_1

    .line 134
    iget-object v0, p0, Lnet/sf/scuba/tlv/TLVInputState;->state:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;

    .line 135
    .local v0, "obj":Lnet/sf/scuba/tlv/TLVInputState$TLStruct;
    iget-object v1, p0, Lnet/sf/scuba/tlv/TLVInputState;->state:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    iget-object v1, p0, Lnet/sf/scuba/tlv/TLVInputState;->state:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;

    .line 137
    .local v1, "parent":Lnet/sf/scuba/tlv/TLVInputState$TLStruct;
    invoke-virtual {v1, p2}, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;->updateValueBytesProcessed(I)V

    .line 139
    .end local v1    # "parent":Lnet/sf/scuba/tlv/TLVInputState$TLStruct;
    :cond_0
    invoke-virtual {v0, p1}, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;->setLength(I)V

    .line 140
    iget-object v1, p0, Lnet/sf/scuba/tlv/TLVInputState;->state:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 141
    const/4 v1, 0x0

    iput-boolean v1, p0, Lnet/sf/scuba/tlv/TLVInputState;->isAtStartOfTag:Z

    .line 142
    iput-boolean v1, p0, Lnet/sf/scuba/tlv/TLVInputState;->isAtStartOfLength:Z

    .line 143
    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/sf/scuba/tlv/TLVInputState;->isReadingValue:Z

    .line 144
    return-void

    .line 132
    .end local v0    # "obj":Lnet/sf/scuba/tlv/TLVInputState$TLStruct;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot set negative length (length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/scuba/tlv/TLVInputState;->getTag()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTagProcessed(II)V
    .locals 3
    .param p1, "tag"    # I
    .param p2, "byteCount"    # I

    .line 113
    new-instance v0, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;

    invoke-direct {v0, p0, p1}, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;-><init>(Lnet/sf/scuba/tlv/TLVInputState;I)V

    .line 114
    .local v0, "obj":Lnet/sf/scuba/tlv/TLVInputState$TLStruct;
    iget-object v1, p0, Lnet/sf/scuba/tlv/TLVInputState;->state:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    iget-object v1, p0, Lnet/sf/scuba/tlv/TLVInputState;->state:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;

    .line 116
    .local v1, "parent":Lnet/sf/scuba/tlv/TLVInputState$TLStruct;
    invoke-virtual {v1, p2}, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;->updateValueBytesProcessed(I)V

    .line 118
    .end local v1    # "parent":Lnet/sf/scuba/tlv/TLVInputState$TLStruct;
    :cond_0
    iget-object v1, p0, Lnet/sf/scuba/tlv/TLVInputState;->state:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 119
    const/4 v1, 0x0

    iput-boolean v1, p0, Lnet/sf/scuba/tlv/TLVInputState;->isAtStartOfTag:Z

    .line 120
    const/4 v2, 0x1

    iput-boolean v2, p0, Lnet/sf/scuba/tlv/TLVInputState;->isAtStartOfLength:Z

    .line 121
    iput-boolean v1, p0, Lnet/sf/scuba/tlv/TLVInputState;->isReadingValue:Z

    .line 122
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 173
    iget-object v0, p0, Lnet/sf/scuba/tlv/TLVInputState;->state:Ljava/util/Deque;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateValueBytesProcessed(I)V
    .locals 6
    .param p1, "byteCount"    # I

    .line 147
    iget-object v0, p0, Lnet/sf/scuba/tlv/TLVInputState;->state:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lnet/sf/scuba/tlv/TLVInputState;->state:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;

    .line 151
    .local v0, "currentObject":Lnet/sf/scuba/tlv/TLVInputState$TLStruct;
    invoke-virtual {v0}, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;->getLength()I

    move-result v1

    invoke-virtual {v0}, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;->getValueBytesProcessed()I

    move-result v2

    sub-int/2addr v1, v2

    .line 152
    .local v1, "bytesLeft":I
    if-gt p1, v1, :cond_2

    .line 155
    invoke-virtual {v0, p1}, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;->updateValueBytesProcessed(I)V

    .line 156
    invoke-virtual {v0}, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;->getLength()I

    move-result v2

    .line 157
    .local v2, "currentLength":I
    invoke-virtual {v0}, Lnet/sf/scuba/tlv/TLVInputState$TLStruct;->getValueBytesProcessed()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v3, v2, :cond_1

    .line 158
    iget-object v3, p0, Lnet/sf/scuba/tlv/TLVInputState;->state:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    .line 160
    invoke-virtual {p0, v2}, Lnet/sf/scuba/tlv/TLVInputState;->updateValueBytesProcessed(I)V

    .line 161
    iput-boolean v4, p0, Lnet/sf/scuba/tlv/TLVInputState;->isAtStartOfTag:Z

    .line 162
    iput-boolean v5, p0, Lnet/sf/scuba/tlv/TLVInputState;->isAtStartOfLength:Z

    .line 163
    iput-boolean v5, p0, Lnet/sf/scuba/tlv/TLVInputState;->isReadingValue:Z

    goto :goto_0

    .line 165
    :cond_1
    iput-boolean v5, p0, Lnet/sf/scuba/tlv/TLVInputState;->isAtStartOfTag:Z

    .line 166
    iput-boolean v5, p0, Lnet/sf/scuba/tlv/TLVInputState;->isAtStartOfLength:Z

    .line 167
    iput-boolean v4, p0, Lnet/sf/scuba/tlv/TLVInputState;->isReadingValue:Z

    .line 169
    :goto_0
    return-void

    .line 153
    .end local v2    # "currentLength":I
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes! Only "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes left in this TLV object "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
