.class Lorg/osgi/framework/ServicePermission$1;
.super Ljava/lang/Object;
.source "ServicePermission.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/osgi/framework/ServicePermission;->getProperties()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osgi/framework/ServicePermission;

.field final synthetic val$bundle:Lorg/osgi/framework/Bundle;

.field final synthetic val$props:Ljava/util/Map;


# direct methods
.method constructor <init>(Lorg/osgi/framework/ServicePermission;Ljava/util/Map;Lorg/osgi/framework/Bundle;)V
    .locals 0

    .line 564
    iput-object p1, p0, Lorg/osgi/framework/ServicePermission$1;->this$0:Lorg/osgi/framework/ServicePermission;

    iput-object p2, p0, Lorg/osgi/framework/ServicePermission$1;->val$props:Ljava/util/Map;

    iput-object p3, p0, Lorg/osgi/framework/ServicePermission$1;->val$bundle:Lorg/osgi/framework/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 564
    invoke-virtual {p0}, Lorg/osgi/framework/ServicePermission$1;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 4

    .line 566
    iget-object v0, p0, Lorg/osgi/framework/ServicePermission$1;->val$props:Ljava/util/Map;

    new-instance v1, Ljava/lang/Long;

    iget-object v2, p0, Lorg/osgi/framework/ServicePermission$1;->val$bundle:Lorg/osgi/framework/Bundle;

    invoke-interface {v2}, Lorg/osgi/framework/Bundle;->getBundleId()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    iget-object v0, p0, Lorg/osgi/framework/ServicePermission$1;->val$props:Ljava/util/Map;

    iget-object v1, p0, Lorg/osgi/framework/ServicePermission$1;->val$bundle:Lorg/osgi/framework/Bundle;

    invoke-interface {v1}, Lorg/osgi/framework/Bundle;->getLocation()Ljava/lang/String;

    move-result-object v1

    const-string v2, "location"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    iget-object v0, p0, Lorg/osgi/framework/ServicePermission$1;->val$bundle:Lorg/osgi/framework/Bundle;

    invoke-interface {v0}, Lorg/osgi/framework/Bundle;->getSymbolicName()Ljava/lang/String;

    move-result-object v0

    .line 569
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 570
    iget-object v1, p0, Lorg/osgi/framework/ServicePermission$1;->val$props:Ljava/util/Map;

    const-string v2, "name"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    :cond_0
    new-instance v1, Lorg/osgi/framework/SignerProperty;

    iget-object v2, p0, Lorg/osgi/framework/ServicePermission$1;->val$bundle:Lorg/osgi/framework/Bundle;

    invoke-direct {v1, v2}, Lorg/osgi/framework/SignerProperty;-><init>(Lorg/osgi/framework/Bundle;)V

    .line 573
    .local v1, "signer":Lorg/osgi/framework/SignerProperty;
    invoke-virtual {v1}, Lorg/osgi/framework/SignerProperty;->isBundleSigned()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 574
    iget-object v2, p0, Lorg/osgi/framework/ServicePermission$1;->val$props:Ljava/util/Map;

    const-string v3, "signer"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method
