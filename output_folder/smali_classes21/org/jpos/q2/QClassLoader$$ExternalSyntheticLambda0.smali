.class public final synthetic Lorg/jpos/q2/QClassLoader$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field public final synthetic f$0:Lorg/jpos/q2/QClassLoader;


# direct methods
.method public synthetic constructor <init>(Lorg/jpos/q2/QClassLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jpos/q2/QClassLoader$$ExternalSyntheticLambda0;->f$0:Lorg/jpos/q2/QClassLoader;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/jpos/q2/QClassLoader$$ExternalSyntheticLambda0;->f$0:Lorg/jpos/q2/QClassLoader;

    invoke-virtual {v0}, Lorg/jpos/q2/QClassLoader;->lambda$scan$0$org-jpos-q2-QClassLoader()Lorg/jpos/q2/QClassLoader;

    move-result-object v0

    return-object v0
.end method
