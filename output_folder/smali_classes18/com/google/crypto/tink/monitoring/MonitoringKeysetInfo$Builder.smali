.class public final Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo$Builder;
.super Ljava/lang/Object;
.source "MonitoringKeysetInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private builderAnnotations:Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;

.field private builderEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo$Entry;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private builderPrimaryKeyId:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo$Builder;->builderEntries:Ljava/util/ArrayList;

    .line 101
    sget-object v0, Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;->EMPTY:Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;

    iput-object v0, p0, Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo$Builder;->builderAnnotations:Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo$Builder;->builderPrimaryKeyId:Ljava/lang/Integer;

    return-void
.end method

.method private isKeyIdInEntries(I)Z
    .locals 3
    .param p1, "keyId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyId"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo$Builder;->builderEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo$Entry;

    .line 133
    .local v1, "entry":Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo$Entry;
    invoke-virtual {v1}, Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo$Entry;->getKeyId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 134
    const/4 v0, 0x1

    return v0

    .line 136
    .end local v1    # "entry":Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo$Entry;
    :cond_0
    goto :goto_0

    .line 137
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public addEntry(Lcom/google/crypto/tink/KeyStatus;ILjava/lang/String;Ljava/lang/String;)Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo$Builder;
    .locals 8
    .param p1, "status"    # Lcom/google/crypto/tink/KeyStatus;
    .param p2, "keyId"    # I
    .param p3, "keyType"    # Ljava/lang/String;
    .param p4, "keyPrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "status",
            "keyId",
            "keyType",
            "keyPrefix"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo$Builder;->builderEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 118
    new-instance v7, Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo$Entry;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo$Entry;-><init>(Lcom/google/crypto/tink/KeyStatus;ILjava/lang/String;Ljava/lang/String;Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo$1;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    return-object p0

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "addEntry cannot be called after build()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public build()Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo$Builder;->builderEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 145
    iget-object v0, p0, Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo$Builder;->builderPrimaryKeyId:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 148
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo$Builder;->isKeyIdInEntries(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "primary key ID is not present in entries"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_1
    :goto_0
    new-instance v0, Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo;

    iget-object v1, p0, Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo$Builder;->builderAnnotations:Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;

    iget-object v2, p0, Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo$Builder;->builderEntries:Ljava/util/ArrayList;

    .line 155
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo$Builder;->builderPrimaryKeyId:Ljava/lang/Integer;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo;-><init>(Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;Ljava/util/List;Ljava/lang/Integer;Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo$1;)V

    .line 160
    .local v0, "output":Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo;
    iput-object v4, p0, Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo$Builder;->builderEntries:Ljava/util/ArrayList;

    .line 161
    return-object v0

    .line 143
    .end local v0    # "output":Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot call build() twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAnnotations(Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;)Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo$Builder;
    .locals 2
    .param p1, "annotations"    # Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "annotations"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo$Builder;->builderEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 109
    iput-object p1, p0, Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo$Builder;->builderAnnotations:Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;

    .line 110
    return-object p0

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setAnnotations cannot be called after build()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPrimaryKeyId(I)Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo$Builder;
    .locals 2
    .param p1, "primaryKeyId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "primaryKeyId"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo$Builder;->builderEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 127
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo$Builder;->builderPrimaryKeyId:Ljava/lang/Integer;

    .line 128
    return-object p0

    .line 125
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setPrimaryKeyId cannot be called after build()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
