.class final Lorg/osgi/service/condpermadmin/BundleLocationCondition$1;
.super Ljava/lang/Object;
.source "BundleLocationCondition.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/osgi/service/condpermadmin/BundleLocationCondition;->getCondition(Lorg/osgi/framework/Bundle;Lorg/osgi/service/condpermadmin/ConditionInfo;)Lorg/osgi/service/condpermadmin/Condition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$bundle:Lorg/osgi/framework/Bundle;


# direct methods
.method constructor <init>(Lorg/osgi/framework/Bundle;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lorg/osgi/service/condpermadmin/BundleLocationCondition$1;->val$bundle:Lorg/osgi/framework/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lorg/osgi/service/condpermadmin/BundleLocationCondition$1;->run()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/osgi/service/condpermadmin/BundleLocationCondition$1;->val$bundle:Lorg/osgi/framework/Bundle;

    invoke-interface {v0}, Lorg/osgi/framework/Bundle;->getLocation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
