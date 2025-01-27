.class final Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendResponse;
.super Lcom/google/android/datatransport/runtime/backends/BackendResponse;
.source "AutoValue_BackendResponse.java"


# instance fields
.field private final nextRequestWaitMillis:J

.field private final status:Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;


# direct methods
.method constructor <init>(Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;J)V
    .locals 2
    .param p1, "status"    # Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;
    .param p2, "nextRequestWaitMillis"    # J

    .line 14
    invoke-direct {p0}, Lcom/google/android/datatransport/runtime/backends/BackendResponse;-><init>()V

    .line 15
    if-eqz p1, :cond_0

    .line 18
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendResponse;->status:Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    .line 19
    iput-wide p2, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendResponse;->nextRequestWaitMillis:J

    .line 20
    return-void

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null status"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 42
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 43
    return v0

    .line 45
    :cond_0
    instance-of v1, p1, Lcom/google/android/datatransport/runtime/backends/BackendResponse;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 46
    move-object v1, p1

    check-cast v1, Lcom/google/android/datatransport/runtime/backends/BackendResponse;

    .line 47
    .local v1, "that":Lcom/google/android/datatransport/runtime/backends/BackendResponse;
    iget-object v3, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendResponse;->status:Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/backends/BackendResponse;->getStatus()Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-wide v3, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendResponse;->nextRequestWaitMillis:J

    .line 48
    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/backends/BackendResponse;->getNextRequestWaitMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 47
    :goto_0
    return v0

    .line 50
    .end local v1    # "that":Lcom/google/android/datatransport/runtime/backends/BackendResponse;
    :cond_2
    return v2
.end method

.method public getNextRequestWaitMillis()J
    .locals 2

    .line 29
    iget-wide v0, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendResponse;->nextRequestWaitMillis:J

    return-wide v0
.end method

.method public getStatus()Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendResponse;->status:Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 55
    const/4 v0, 0x1

    .line 56
    .local v0, "h$":I
    const v1, 0xf4243

    mul-int/2addr v0, v1

    .line 57
    iget-object v2, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendResponse;->status:Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    invoke-virtual {v2}, Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 58
    mul-int/2addr v0, v1

    .line 59
    iget-wide v1, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendResponse;->nextRequestWaitMillis:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    xor-int/2addr v0, v1

    .line 60
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BackendResponse{status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendResponse;->status:Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nextRequestWaitMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendResponse;->nextRequestWaitMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
