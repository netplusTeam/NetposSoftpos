.class public Lorg/jpos/transaction/participant/Join$Runner;
.super Ljava/lang/Object;
.source "Join.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/transaction/participant/Join;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Runner"
.end annotation


# static fields
.field public static final ABORT:I = 0x3

.field public static final COMMIT:I = 0x2

.field public static final MODES:[Ljava/lang/String;

.field public static final PREPARE:I = 0x0

.field public static final PREPARE_FOR_ABORT:I = 0x1


# instance fields
.field ctx:Ljava/io/Serializable;

.field id:J

.field mode:I

.field p:Lorg/jpos/transaction/TransactionParticipant;

.field public rc:I

.field t:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 131
    const-string v0, "prepare"

    const-string v1, "prepareForAbort"

    const-string v2, "commit"

    const-string v3, "abort"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jpos/transaction/participant/Join$Runner;->MODES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/jpos/transaction/TransactionParticipant;JLjava/io/Serializable;)V
    .locals 0
    .param p1, "p"    # Lorg/jpos/transaction/TransactionParticipant;
    .param p2, "id"    # J
    .param p4, "ctx"    # Ljava/io/Serializable;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Lorg/jpos/transaction/participant/Join$Runner;->p:Lorg/jpos/transaction/TransactionParticipant;

    .line 137
    iput-wide p2, p0, Lorg/jpos/transaction/participant/Join$Runner;->id:J

    .line 138
    iput-object p4, p0, Lorg/jpos/transaction/participant/Join$Runner;->ctx:Ljava/io/Serializable;

    .line 139
    return-void
.end method

.method private createThread(I)V
    .locals 3
    .param p1, "m"    # I

    .line 177
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/jpos/transaction/participant/Join$Runner;->t:Ljava/lang/Thread;

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/jpos/transaction/participant/Join$Runner;->MODES:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 180
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jpos/transaction/participant/Join$Runner;->p:Lorg/jpos/transaction/TransactionParticipant;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 182
    iput p1, p0, Lorg/jpos/transaction/participant/Join$Runner;->mode:I

    .line 183
    iget-object v0, p0, Lorg/jpos/transaction/participant/Join$Runner;->t:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 184
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    .line 150
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/jpos/transaction/participant/Join$Runner;->createThread(I)V

    .line 151
    return-void
.end method

.method public commit()V
    .locals 1

    .line 147
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/jpos/transaction/participant/Join$Runner;->createThread(I)V

    .line 148
    return-void
.end method

.method public join()V
    .locals 1

    .line 173
    :try_start_0
    iget-object v0, p0, Lorg/jpos/transaction/participant/Join$Runner;->t:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 175
    return-void
.end method

.method public prepare()V
    .locals 1

    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jpos/transaction/participant/Join$Runner;->createThread(I)V

    .line 142
    return-void
.end method

.method public prepareForAbort()V
    .locals 1

    .line 144
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/jpos/transaction/participant/Join$Runner;->createThread(I)V

    .line 145
    return-void
.end method

.method public run()V
    .locals 4

    .line 153
    iget v0, p0, Lorg/jpos/transaction/participant/Join$Runner;->mode:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 166
    :pswitch_0
    iget v0, p0, Lorg/jpos/transaction/participant/Join$Runner;->rc:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lorg/jpos/transaction/participant/Join$Runner;->p:Lorg/jpos/transaction/TransactionParticipant;

    iget-wide v1, p0, Lorg/jpos/transaction/participant/Join$Runner;->id:J

    iget-object v3, p0, Lorg/jpos/transaction/participant/Join$Runner;->ctx:Ljava/io/Serializable;

    invoke-interface {v0, v1, v2, v3}, Lorg/jpos/transaction/TransactionParticipant;->abort(JLjava/io/Serializable;)V

    goto :goto_0

    .line 162
    :pswitch_1
    iget v0, p0, Lorg/jpos/transaction/participant/Join$Runner;->rc:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lorg/jpos/transaction/participant/Join$Runner;->p:Lorg/jpos/transaction/TransactionParticipant;

    iget-wide v1, p0, Lorg/jpos/transaction/participant/Join$Runner;->id:J

    iget-object v3, p0, Lorg/jpos/transaction/participant/Join$Runner;->ctx:Ljava/io/Serializable;

    invoke-interface {v0, v1, v2, v3}, Lorg/jpos/transaction/TransactionParticipant;->commit(JLjava/io/Serializable;)V

    goto :goto_0

    .line 158
    :pswitch_2
    iget-object v0, p0, Lorg/jpos/transaction/participant/Join$Runner;->p:Lorg/jpos/transaction/TransactionParticipant;

    instance-of v1, v0, Lorg/jpos/transaction/AbortParticipant;

    if-eqz v1, :cond_0

    .line 159
    check-cast v0, Lorg/jpos/transaction/AbortParticipant;

    iget-wide v1, p0, Lorg/jpos/transaction/participant/Join$Runner;->id:J

    iget-object v3, p0, Lorg/jpos/transaction/participant/Join$Runner;->ctx:Ljava/io/Serializable;

    invoke-interface {v0, v1, v2, v3}, Lorg/jpos/transaction/AbortParticipant;->prepareForAbort(JLjava/io/Serializable;)I

    move-result v0

    iput v0, p0, Lorg/jpos/transaction/participant/Join$Runner;->rc:I

    goto :goto_0

    .line 155
    :pswitch_3
    iget-object v0, p0, Lorg/jpos/transaction/participant/Join$Runner;->p:Lorg/jpos/transaction/TransactionParticipant;

    iget-wide v1, p0, Lorg/jpos/transaction/participant/Join$Runner;->id:J

    iget-object v3, p0, Lorg/jpos/transaction/participant/Join$Runner;->ctx:Ljava/io/Serializable;

    invoke-interface {v0, v1, v2, v3}, Lorg/jpos/transaction/TransactionParticipant;->prepare(JLjava/io/Serializable;)I

    move-result v0

    iput v0, p0, Lorg/jpos/transaction/participant/Join$Runner;->rc:I

    .line 156
    nop

    .line 170
    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
