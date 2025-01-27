.class public Lcom/solab/iso8583/impl/SimpleTraceGenerator;
.super Ljava/lang/Object;
.source "SimpleTraceGenerator.java"

# interfaces
.implements Lcom/solab/iso8583/TraceNumberGenerator;


# instance fields
.field private volatile value:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "initialValue"    # I

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/solab/iso8583/impl/SimpleTraceGenerator;->value:I

    .line 37
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const v0, 0xf423f

    if-gt p1, v0, :cond_0

    .line 40
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/solab/iso8583/impl/SimpleTraceGenerator;->value:I

    .line 41
    return-void

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Initial value must be between 1 and 999999"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getLastTrace()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/solab/iso8583/impl/SimpleTraceGenerator;->value:I

    return v0
.end method

.method public declared-synchronized nextTrace()I
    .locals 3

    monitor-enter p0

    .line 50
    :try_start_0
    iget v0, p0, Lcom/solab/iso8583/impl/SimpleTraceGenerator;->value:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/solab/iso8583/impl/SimpleTraceGenerator;->value:I

    .line 51
    iget v0, p0, Lcom/solab/iso8583/impl/SimpleTraceGenerator;->value:I

    const v2, 0xf423f

    if-le v0, v2, :cond_0

    .line 52
    iput v1, p0, Lcom/solab/iso8583/impl/SimpleTraceGenerator;->value:I

    .line 54
    .end local p0    # "this":Lcom/solab/iso8583/impl/SimpleTraceGenerator;
    :cond_0
    iget v0, p0, Lcom/solab/iso8583/impl/SimpleTraceGenerator;->value:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
