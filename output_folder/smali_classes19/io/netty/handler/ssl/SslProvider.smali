.class public final enum Lio/netty/handler/ssl/SslProvider;
.super Ljava/lang/Enum;
.source "SslProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/netty/handler/ssl/SslProvider;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/netty/handler/ssl/SslProvider;

.field public static final enum JDK:Lio/netty/handler/ssl/SslProvider;

.field public static final enum OPENSSL:Lio/netty/handler/ssl/SslProvider;

.field public static final enum OPENSSL_REFCNT:Lio/netty/handler/ssl/SslProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 29
    new-instance v0, Lio/netty/handler/ssl/SslProvider;

    const-string v1, "JDK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/netty/handler/ssl/SslProvider;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/netty/handler/ssl/SslProvider;->JDK:Lio/netty/handler/ssl/SslProvider;

    .line 33
    new-instance v1, Lio/netty/handler/ssl/SslProvider;

    const-string v3, "OPENSSL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/netty/handler/ssl/SslProvider;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/netty/handler/ssl/SslProvider;->OPENSSL:Lio/netty/handler/ssl/SslProvider;

    .line 37
    new-instance v3, Lio/netty/handler/ssl/SslProvider;

    const-string v5, "OPENSSL_REFCNT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/netty/handler/ssl/SslProvider;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/netty/handler/ssl/SslProvider;->OPENSSL_REFCNT:Lio/netty/handler/ssl/SslProvider;

    .line 25
    const/4 v5, 0x3

    new-array v5, v5, [Lio/netty/handler/ssl/SslProvider;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lio/netty/handler/ssl/SslProvider;->$VALUES:[Lio/netty/handler/ssl/SslProvider;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static isAlpnSupported(Lio/netty/handler/ssl/SslProvider;)Z
    .locals 3
    .param p0, "provider"    # Lio/netty/handler/ssl/SslProvider;

    .line 45
    sget-object v0, Lio/netty/handler/ssl/SslProvider$1;->$SwitchMap$io$netty$handler$ssl$SslProvider:[I

    invoke-virtual {p0}, Lio/netty/handler/ssl/SslProvider;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 52
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown SslProvider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :pswitch_0
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->isAlpnSupported()Z

    move-result v0

    return v0

    .line 47
    :pswitch_1
    invoke-static {}, Lio/netty/handler/ssl/JdkAlpnApplicationProtocolNegotiator;->isAlpnSupported()Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lio/netty/handler/ssl/SslProvider;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 25
    const-class v0, Lio/netty/handler/ssl/SslProvider;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/netty/handler/ssl/SslProvider;

    return-object v0
.end method

.method public static values()[Lio/netty/handler/ssl/SslProvider;
    .locals 1

    .line 25
    sget-object v0, Lio/netty/handler/ssl/SslProvider;->$VALUES:[Lio/netty/handler/ssl/SslProvider;

    invoke-virtual {v0}, [Lio/netty/handler/ssl/SslProvider;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/netty/handler/ssl/SslProvider;

    return-object v0
.end method
