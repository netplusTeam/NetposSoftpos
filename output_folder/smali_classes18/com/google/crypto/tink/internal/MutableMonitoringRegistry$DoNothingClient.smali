.class Lcom/google/crypto/tink/internal/MutableMonitoringRegistry$DoNothingClient;
.super Ljava/lang/Object;
.source "MutableMonitoringRegistry.java"

# interfaces
.implements Lcom/google/crypto/tink/monitoring/MonitoringClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/internal/MutableMonitoringRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DoNothingClient"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/internal/MutableMonitoringRegistry$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/crypto/tink/internal/MutableMonitoringRegistry$1;

    .line 34
    invoke-direct {p0}, Lcom/google/crypto/tink/internal/MutableMonitoringRegistry$DoNothingClient;-><init>()V

    return-void
.end method


# virtual methods
.method public createLogger(Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo;Ljava/lang/String;Ljava/lang/String;)Lcom/google/crypto/tink/monitoring/MonitoringClient$Logger;
    .locals 1
    .param p1, "keysetInfo"    # Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo;
    .param p2, "primitive"    # Ljava/lang/String;
    .param p3, "api"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "keysetInfo",
            "primitive",
            "api"
        }
    .end annotation

    .line 38
    sget-object v0, Lcom/google/crypto/tink/internal/MonitoringUtil;->DO_NOTHING_LOGGER:Lcom/google/crypto/tink/monitoring/MonitoringClient$Logger;

    return-object v0
.end method
