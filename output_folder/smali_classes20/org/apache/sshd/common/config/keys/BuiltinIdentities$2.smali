.class final enum Lorg/apache/sshd/common/config/keys/BuiltinIdentities$2;
.super Lorg/apache/sshd/common/config/keys/BuiltinIdentities;
.source "BuiltinIdentities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/common/config/keys/BuiltinIdentities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 9
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "algorithm"    # Ljava/lang/String;
    .param p7, "keyType"    # Ljava/lang/String;

    .line 61
    .local p5, "pubType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/security/PublicKey;>;"
    .local p6, "prvType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/security/PrivateKey;>;"
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lorg/apache/sshd/common/config/keys/BuiltinIdentities;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Lorg/apache/sshd/common/config/keys/BuiltinIdentities$1;)V

    return-void
.end method


# virtual methods
.method public isSupported()Z
    .locals 1

    .line 67
    invoke-static {}, Lorg/apache/sshd/common/util/security/SecurityUtils;->isEDDSACurveSupported()Z

    move-result v0

    return v0
.end method
