.class final Ljava9/util/ColSer;
.super Ljava/lang/Object;
.source "ImmutableCollections.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final IMM_LIST:I = 0x1

.field static final IMM_MAP:I = 0x3

.field static final IMM_SET:I = 0x2

.field private static final serialVersionUID:J = 0x578eabb63a1ba811L


# instance fields
.field private transient array:[Ljava/lang/Object;

.field private final tag:I


# direct methods
.method varargs constructor <init>(I[Ljava/lang/Object;)V
    .locals 0
    .param p1, "t"    # I
    .param p2, "a"    # [Ljava/lang/Object;

    .line 1166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1167
    iput p1, p0, Ljava9/util/ColSer;->tag:I

    .line 1168
    iput-object p2, p0, Ljava9/util/ColSer;->array:[Ljava/lang/Object;

    .line 1169
    return-void
.end method

.method private static ioe(Ljava/lang/RuntimeException;)Ljava/io/InvalidObjectException;
    .locals 2
    .param p0, "ex"    # Ljava/lang/RuntimeException;

    .line 1271
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "invalid object"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    .line 1272
    .local v0, "ioe":Ljava/io/InvalidObjectException;
    invoke-virtual {v0, p0}, Ljava/io/InvalidObjectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1273
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .param p1, "ois"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1186
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1187
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 1189
    .local v0, "len":I
    if-ltz v0, :cond_1

    .line 1193
    new-array v1, v0, [Ljava/lang/Object;

    .line 1194
    .local v1, "a":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1195
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1194
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1198
    .end local v2    # "i":I
    :cond_0
    iput-object v1, p0, Ljava9/util/ColSer;->array:[Ljava/lang/Object;

    .line 1199
    return-void

    .line 1190
    .end local v1    # "a":[Ljava/lang/Object;
    :cond_1
    new-instance v1, Ljava/io/InvalidObjectException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "negative length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 1241
    :try_start_0
    iget-object v0, p0, Ljava9/util/ColSer;->array:[Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 1247
    iget v1, p0, Ljava9/util/ColSer;->tag:I

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    .line 1261
    new-instance v0, Ljava/io/InvalidObjectException;

    goto :goto_0

    .line 1253
    :pswitch_0
    array-length v1, v0

    if-nez v1, :cond_0

    .line 1254
    sget-object v0, Ljava9/util/ImmutableCollections;->EMPTY_MAP:Ljava9/util/ImmutableCollections$MapN;

    return-object v0

    .line 1255
    :cond_0
    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1256
    new-instance v0, Ljava9/util/ImmutableCollections$Map1;

    iget-object v1, p0, Ljava9/util/ColSer;->array:[Ljava/lang/Object;

    aget-object v2, v1, v2

    aget-object v1, v1, v3

    invoke-direct {v0, v2, v1}, Ljava9/util/ImmutableCollections$Map1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 1258
    :cond_1
    new-instance v0, Ljava9/util/ImmutableCollections$MapN;

    iget-object v1, p0, Ljava9/util/ColSer;->array:[Ljava/lang/Object;

    invoke-direct {v0, v1}, Ljava9/util/ImmutableCollections$MapN;-><init>([Ljava/lang/Object;)V

    return-object v0

    .line 1251
    :pswitch_1
    invoke-static {v0}, Ljava9/util/Sets;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 1249
    :pswitch_2
    invoke-static {v0}, Ljava9/util/Lists;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1261
    :goto_0
    const-string v1, "invalid flags 0x%x"

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Ljava9/util/ColSer;->tag:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1242
    :cond_2
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "null array"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1265
    :catch_0
    move-exception v0

    .line 1266
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    invoke-static {v0}, Ljava9/util/ColSer;->ioe(Ljava/lang/RuntimeException;)Ljava/io/InvalidObjectException;

    move-result-object v1

    throw v1

    .line 1263
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 1264
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-static {v0}, Ljava9/util/ColSer;->ioe(Ljava/lang/RuntimeException;)Ljava/io/InvalidObjectException;

    move-result-object v1

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "oos"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1214
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1215
    iget-object v0, p0, Ljava9/util/ColSer;->array:[Ljava/lang/Object;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1216
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljava9/util/ColSer;->array:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 1217
    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1216
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1219
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
