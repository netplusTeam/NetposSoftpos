.class public final synthetic Lorg/jline/builtins/Commands$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiPredicate;


# instance fields
.field public final synthetic f$0:Ljava/nio/file/PathMatcher;


# direct methods
.method public synthetic constructor <init>(Ljava/nio/file/PathMatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/builtins/Commands$$ExternalSyntheticLambda3;->f$0:Ljava/nio/file/PathMatcher;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/jline/builtins/Commands$$ExternalSyntheticLambda3;->f$0:Ljava/nio/file/PathMatcher;

    check-cast p1, Ljava/nio/file/Path;

    check-cast p2, Ljava/nio/file/attribute/BasicFileAttributes;

    invoke-static {v0, p1, p2}, Lorg/jline/builtins/Commands;->lambda$findFiles$0(Ljava/nio/file/PathMatcher;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Z

    move-result p1

    return p1
.end method
