.class public final enum Lorg/apache/sshd/common/config/SyslogFacilityValue;
.super Ljava/lang/Enum;
.source "SyslogFacilityValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/sshd/common/config/SyslogFacilityValue;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/sshd/common/config/SyslogFacilityValue;

.field public static final enum AUTH:Lorg/apache/sshd/common/config/SyslogFacilityValue;

.field public static final enum DAEMON:Lorg/apache/sshd/common/config/SyslogFacilityValue;

.field public static final enum LOCAL0:Lorg/apache/sshd/common/config/SyslogFacilityValue;

.field public static final enum LOCAL1:Lorg/apache/sshd/common/config/SyslogFacilityValue;

.field public static final enum LOCAL2:Lorg/apache/sshd/common/config/SyslogFacilityValue;

.field public static final enum LOCAL3:Lorg/apache/sshd/common/config/SyslogFacilityValue;

.field public static final enum LOCAL4:Lorg/apache/sshd/common/config/SyslogFacilityValue;

.field public static final enum LOCAL5:Lorg/apache/sshd/common/config/SyslogFacilityValue;

.field public static final enum LOCAL6:Lorg/apache/sshd/common/config/SyslogFacilityValue;

.field public static final enum LOCAL7:Lorg/apache/sshd/common/config/SyslogFacilityValue;

.field public static final enum USER:Lorg/apache/sshd/common/config/SyslogFacilityValue;

.field public static final VALUES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/sshd/common/config/SyslogFacilityValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 33
    new-instance v0, Lorg/apache/sshd/common/config/SyslogFacilityValue;

    const-string v1, "DAEMON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/sshd/common/config/SyslogFacilityValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/sshd/common/config/SyslogFacilityValue;->DAEMON:Lorg/apache/sshd/common/config/SyslogFacilityValue;

    .line 34
    new-instance v1, Lorg/apache/sshd/common/config/SyslogFacilityValue;

    const-string v3, "USER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/sshd/common/config/SyslogFacilityValue;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/sshd/common/config/SyslogFacilityValue;->USER:Lorg/apache/sshd/common/config/SyslogFacilityValue;

    .line 35
    new-instance v3, Lorg/apache/sshd/common/config/SyslogFacilityValue;

    const-string v5, "AUTH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/sshd/common/config/SyslogFacilityValue;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/sshd/common/config/SyslogFacilityValue;->AUTH:Lorg/apache/sshd/common/config/SyslogFacilityValue;

    .line 36
    new-instance v5, Lorg/apache/sshd/common/config/SyslogFacilityValue;

    const-string v7, "LOCAL0"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/apache/sshd/common/config/SyslogFacilityValue;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/sshd/common/config/SyslogFacilityValue;->LOCAL0:Lorg/apache/sshd/common/config/SyslogFacilityValue;

    .line 37
    new-instance v7, Lorg/apache/sshd/common/config/SyslogFacilityValue;

    const-string v9, "LOCAL1"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/apache/sshd/common/config/SyslogFacilityValue;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/apache/sshd/common/config/SyslogFacilityValue;->LOCAL1:Lorg/apache/sshd/common/config/SyslogFacilityValue;

    .line 38
    new-instance v9, Lorg/apache/sshd/common/config/SyslogFacilityValue;

    const-string v11, "LOCAL2"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/apache/sshd/common/config/SyslogFacilityValue;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/apache/sshd/common/config/SyslogFacilityValue;->LOCAL2:Lorg/apache/sshd/common/config/SyslogFacilityValue;

    .line 39
    new-instance v11, Lorg/apache/sshd/common/config/SyslogFacilityValue;

    const-string v13, "LOCAL3"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lorg/apache/sshd/common/config/SyslogFacilityValue;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/apache/sshd/common/config/SyslogFacilityValue;->LOCAL3:Lorg/apache/sshd/common/config/SyslogFacilityValue;

    .line 40
    new-instance v13, Lorg/apache/sshd/common/config/SyslogFacilityValue;

    const-string v15, "LOCAL4"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lorg/apache/sshd/common/config/SyslogFacilityValue;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lorg/apache/sshd/common/config/SyslogFacilityValue;->LOCAL4:Lorg/apache/sshd/common/config/SyslogFacilityValue;

    .line 41
    new-instance v15, Lorg/apache/sshd/common/config/SyslogFacilityValue;

    const-string v14, "LOCAL5"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lorg/apache/sshd/common/config/SyslogFacilityValue;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lorg/apache/sshd/common/config/SyslogFacilityValue;->LOCAL5:Lorg/apache/sshd/common/config/SyslogFacilityValue;

    .line 42
    new-instance v14, Lorg/apache/sshd/common/config/SyslogFacilityValue;

    const-string v12, "LOCAL6"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lorg/apache/sshd/common/config/SyslogFacilityValue;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lorg/apache/sshd/common/config/SyslogFacilityValue;->LOCAL6:Lorg/apache/sshd/common/config/SyslogFacilityValue;

    .line 43
    new-instance v12, Lorg/apache/sshd/common/config/SyslogFacilityValue;

    const-string v10, "LOCAL7"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lorg/apache/sshd/common/config/SyslogFacilityValue;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lorg/apache/sshd/common/config/SyslogFacilityValue;->LOCAL7:Lorg/apache/sshd/common/config/SyslogFacilityValue;

    .line 32
    const/16 v10, 0xb

    new-array v10, v10, [Lorg/apache/sshd/common/config/SyslogFacilityValue;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    const/4 v0, 0x3

    aput-object v5, v10, v0

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    const/16 v0, 0x8

    aput-object v15, v10, v0

    const/16 v0, 0x9

    aput-object v14, v10, v0

    aput-object v12, v10, v8

    sput-object v10, Lorg/apache/sshd/common/config/SyslogFacilityValue;->$VALUES:[Lorg/apache/sshd/common/config/SyslogFacilityValue;

    .line 45
    const-class v0, Lorg/apache/sshd/common/config/SyslogFacilityValue;

    .line 46
    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/config/SyslogFacilityValue;->VALUES:Ljava/util/Set;

    .line 45
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromName(Ljava/lang/String;)Lorg/apache/sshd/common/config/SyslogFacilityValue;
    .locals 4
    .param p0, "n"    # Ljava/lang/String;

    .line 49
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 50
    return-object v1

    .line 53
    :cond_0
    sget-object v0, Lorg/apache/sshd/common/config/SyslogFacilityValue;->VALUES:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/config/SyslogFacilityValue;

    .line 54
    .local v2, "f":Lorg/apache/sshd/common/config/SyslogFacilityValue;
    invoke-virtual {v2}, Lorg/apache/sshd/common/config/SyslogFacilityValue;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 55
    return-object v2

    .line 57
    .end local v2    # "f":Lorg/apache/sshd/common/config/SyslogFacilityValue;
    :cond_1
    goto :goto_0

    .line 59
    :cond_2
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/sshd/common/config/SyslogFacilityValue;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 32
    const-class v0, Lorg/apache/sshd/common/config/SyslogFacilityValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/config/SyslogFacilityValue;

    return-object v0
.end method

.method public static values()[Lorg/apache/sshd/common/config/SyslogFacilityValue;
    .locals 1

    .line 32
    sget-object v0, Lorg/apache/sshd/common/config/SyslogFacilityValue;->$VALUES:[Lorg/apache/sshd/common/config/SyslogFacilityValue;

    invoke-virtual {v0}, [Lorg/apache/sshd/common/config/SyslogFacilityValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/sshd/common/config/SyslogFacilityValue;

    return-object v0
.end method
