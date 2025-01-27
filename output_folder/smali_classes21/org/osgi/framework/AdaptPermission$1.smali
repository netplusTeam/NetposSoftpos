.class Lorg/osgi/framework/AdaptPermission$1;
.super Ljava/lang/Object;
.source "AdaptPermission.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/osgi/framework/AdaptPermission;->getProperties()Ljava/util/Map;
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
.field final synthetic this$0:Lorg/osgi/framework/AdaptPermission;

.field final synthetic val$map:Ljava/util/Map;


# direct methods
.method constructor <init>(Lorg/osgi/framework/AdaptPermission;Ljava/util/Map;)V
    .locals 0

    .line 445
    iput-object p1, p0, Lorg/osgi/framework/AdaptPermission$1;->this$0:Lorg/osgi/framework/AdaptPermission;

    iput-object p2, p0, Lorg/osgi/framework/AdaptPermission$1;->val$map:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 445
    invoke-virtual {p0}, Lorg/osgi/framework/AdaptPermission$1;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 4

    .line 447
    iget-object v0, p0, Lorg/osgi/framework/AdaptPermission$1;->val$map:Ljava/util/Map;

    new-instance v1, Ljava/lang/Long;

    iget-object v2, p0, Lorg/osgi/framework/AdaptPermission$1;->this$0:Lorg/osgi/framework/AdaptPermission;

    iget-object v2, v2, Lorg/osgi/framework/AdaptPermission;->bundle:Lorg/osgi/framework/Bundle;

    invoke-interface {v2}, Lorg/osgi/framework/Bundle;->getBundleId()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    iget-object v0, p0, Lorg/osgi/framework/AdaptPermission$1;->val$map:Ljava/util/Map;

    iget-object v1, p0, Lorg/osgi/framework/AdaptPermission$1;->this$0:Lorg/osgi/framework/AdaptPermission;

    iget-object v1, v1, Lorg/osgi/framework/AdaptPermission;->bundle:Lorg/osgi/framework/Bundle;

    invoke-interface {v1}, Lorg/osgi/framework/Bundle;->getLocation()Ljava/lang/String;

    move-result-object v1

    const-string v2, "location"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    iget-object v0, p0, Lorg/osgi/framework/AdaptPermission$1;->this$0:Lorg/osgi/framework/AdaptPermission;

    iget-object v0, v0, Lorg/osgi/framework/AdaptPermission;->bundle:Lorg/osgi/framework/Bundle;

    invoke-interface {v0}, Lorg/osgi/framework/Bundle;->getSymbolicName()Ljava/lang/String;

    move-result-object v0

    .line 450
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 451
    iget-object v1, p0, Lorg/osgi/framework/AdaptPermission$1;->val$map:Ljava/util/Map;

    const-string v2, "name"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    :cond_0
    new-instance v1, Lorg/osgi/framework/SignerProperty;

    iget-object v2, p0, Lorg/osgi/framework/AdaptPermission$1;->this$0:Lorg/osgi/framework/AdaptPermission;

    iget-object v2, v2, Lorg/osgi/framework/AdaptPermission;->bundle:Lorg/osgi/framework/Bundle;

    invoke-direct {v1, v2}, Lorg/osgi/framework/SignerProperty;-><init>(Lorg/osgi/framework/Bundle;)V

    .line 454
    .local v1, "signer":Lorg/osgi/framework/SignerProperty;
    invoke-virtual {v1}, Lorg/osgi/framework/SignerProperty;->isBundleSigned()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 455
    iget-object v2, p0, Lorg/osgi/framework/AdaptPermission$1;->val$map:Ljava/util/Map;

    const-string v3, "signer"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method
