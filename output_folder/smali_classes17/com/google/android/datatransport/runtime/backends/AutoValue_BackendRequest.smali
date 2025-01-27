.class final Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendRequest;
.super Lcom/google/android/datatransport/runtime/backends/BackendRequest;
.source "AutoValue_BackendRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendRequest$Builder;
    }
.end annotation


# instance fields
.field private final events:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Lcom/google/android/datatransport/runtime/EventInternal;",
            ">;"
        }
    .end annotation
.end field

.field private final extras:[B


# direct methods
.method private constructor <init>(Ljava/lang/Iterable;[B)V
    .locals 0
    .param p2, "extras"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/android/datatransport/runtime/EventInternal;",
            ">;[B)V"
        }
    .end annotation

    .line 18
    .local p1, "events":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/android/datatransport/runtime/EventInternal;>;"
    invoke-direct {p0}, Lcom/google/android/datatransport/runtime/backends/BackendRequest;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendRequest;->events:Ljava/lang/Iterable;

    .line 20
    iput-object p2, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendRequest;->extras:[B

    .line 21
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Iterable;[BLcom/google/android/datatransport/runtime/backends/AutoValue_BackendRequest$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Iterable;
    .param p2, "x1"    # [B
    .param p3, "x2"    # Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendRequest$1;

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendRequest;-><init>(Ljava/lang/Iterable;[B)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 44
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 45
    return v0

    .line 47
    :cond_0
    instance-of v1, p1, Lcom/google/android/datatransport/runtime/backends/BackendRequest;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 48
    move-object v1, p1

    check-cast v1, Lcom/google/android/datatransport/runtime/backends/BackendRequest;

    .line 49
    .local v1, "that":Lcom/google/android/datatransport/runtime/backends/BackendRequest;
    iget-object v3, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendRequest;->events:Ljava/lang/Iterable;

    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/backends/BackendRequest;->getEvents()Ljava/lang/Iterable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendRequest;->extras:[B

    .line 50
    instance-of v4, v1, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendRequest;

    if-eqz v4, :cond_1

    move-object v4, v1

    check-cast v4, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendRequest;

    iget-object v4, v4, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendRequest;->extras:[B

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/backends/BackendRequest;->getExtras()[B

    move-result-object v4

    :goto_0
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v0, v2

    .line 49
    :goto_1
    return v0

    .line 52
    .end local v1    # "that":Lcom/google/android/datatransport/runtime/backends/BackendRequest;
    :cond_3
    return v2
.end method

.method public getEvents()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/google/android/datatransport/runtime/EventInternal;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendRequest;->events:Ljava/lang/Iterable;

    return-object v0
.end method

.method public getExtras()[B
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendRequest;->extras:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 57
    const/4 v0, 0x1

    .line 58
    .local v0, "h$":I
    const v1, 0xf4243

    mul-int/2addr v0, v1

    .line 59
    iget-object v2, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendRequest;->events:Ljava/lang/Iterable;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 60
    mul-int/2addr v0, v1

    .line 61
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendRequest;->extras:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    .line 62
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BackendRequest{events="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendRequest;->events:Ljava/lang/Iterable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendRequest;->extras:[B

    .line 38
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36
    return-object v0
.end method
