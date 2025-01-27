.class Ljavassist/util/proxy/SecurityActions$7;
.super Ljava/lang/Object;
.source "SecurityActions.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavassist/util/proxy/SecurityActions;->set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$fld:Ljava/lang/reflect/Field;

.field final synthetic val$target:Ljava/lang/Object;

.field final synthetic val$value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 178
    iput-object p1, p0, Ljavassist/util/proxy/SecurityActions$7;->val$fld:Ljava/lang/reflect/Field;

    iput-object p2, p0, Ljavassist/util/proxy/SecurityActions$7;->val$target:Ljava/lang/Object;

    iput-object p3, p0, Ljavassist/util/proxy/SecurityActions$7;->val$value:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 178
    invoke-virtual {p0}, Ljavassist/util/proxy/SecurityActions$7;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 180
    iget-object v0, p0, Ljavassist/util/proxy/SecurityActions$7;->val$fld:Ljava/lang/reflect/Field;

    iget-object v1, p0, Ljavassist/util/proxy/SecurityActions$7;->val$target:Ljava/lang/Object;

    iget-object v2, p0, Ljavassist/util/proxy/SecurityActions$7;->val$value:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 181
    const/4 v0, 0x0

    return-object v0
.end method
