.class public final Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;
.super Ljava/lang/Object;
.source "MonitoringAnnotations.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/monitoring/MonitoringAnnotations$Builder;
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;


# instance fields
.field private final entries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    invoke-static {}, Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;->newBuilder()Lcom/google/crypto/tink/monitoring/MonitoringAnnotations$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/monitoring/MonitoringAnnotations$Builder;->build()Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;->EMPTY:Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 77
    .local p1, "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;->entries:Ljava/util/Map;

    .line 79
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Lcom/google/crypto/tink/monitoring/MonitoringAnnotations$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/Map;
    .param p2, "x1"    # Lcom/google/crypto/tink/monitoring/MonitoringAnnotations$1;

    .line 33
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public static newBuilder()Lcom/google/crypto/tink/monitoring/MonitoringAnnotations$Builder;
    .locals 1

    .line 82
    new-instance v0, Lcom/google/crypto/tink/monitoring/MonitoringAnnotations$Builder;

    invoke-direct {v0}, Lcom/google/crypto/tink/monitoring/MonitoringAnnotations$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 92
    instance-of v0, p1, Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;

    if-nez v0, :cond_0

    .line 93
    const/4 v0, 0x0

    return v0

    .line 95
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;

    .line 96
    .local v0, "that":Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;
    iget-object v1, p0, Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;->entries:Ljava/util/Map;

    iget-object v2, v0, Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;->entries:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;->entries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public toMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;->entries:Ljava/util/Map;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;->entries:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
