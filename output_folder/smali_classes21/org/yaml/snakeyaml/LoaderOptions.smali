.class public Lorg/yaml/snakeyaml/LoaderOptions;
.super Ljava/lang/Object;
.source "LoaderOptions.java"


# instance fields
.field private allowDuplicateKeys:Z

.field private allowRecursiveKeys:Z

.field private maxAliasesForCollections:I

.field private wrappedToRootException:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/LoaderOptions;->allowDuplicateKeys:Z

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/LoaderOptions;->wrappedToRootException:Z

    .line 22
    const/16 v0, 0x32

    iput v0, p0, Lorg/yaml/snakeyaml/LoaderOptions;->maxAliasesForCollections:I

    return-void
.end method


# virtual methods
.method public getAllowRecursiveKeys()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/LoaderOptions;->allowRecursiveKeys:Z

    return v0
.end method

.method public getMaxAliasesForCollections()I
    .locals 1

    .line 64
    iget v0, p0, Lorg/yaml/snakeyaml/LoaderOptions;->maxAliasesForCollections:I

    return v0
.end method

.method public isAllowDuplicateKeys()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/LoaderOptions;->allowDuplicateKeys:Z

    return v0
.end method

.method public isWrappedToRootException()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/LoaderOptions;->wrappedToRootException:Z

    return v0
.end method

.method public setAllowDuplicateKeys(Z)V
    .locals 0
    .param p1, "allowDuplicateKeys"    # Z

    .line 45
    iput-boolean p1, p0, Lorg/yaml/snakeyaml/LoaderOptions;->allowDuplicateKeys:Z

    .line 46
    return-void
.end method

.method public setAllowRecursiveKeys(Z)V
    .locals 0
    .param p1, "allowRecursiveKeys"    # Z

    .line 72
    iput-boolean p1, p0, Lorg/yaml/snakeyaml/LoaderOptions;->allowRecursiveKeys:Z

    .line 73
    return-void
.end method

.method public setMaxAliasesForCollections(I)V
    .locals 0
    .param p1, "maxAliasesForCollections"    # I

    .line 68
    iput p1, p0, Lorg/yaml/snakeyaml/LoaderOptions;->maxAliasesForCollections:I

    .line 69
    return-void
.end method

.method public setWrappedToRootException(Z)V
    .locals 0
    .param p1, "wrappedToRootException"    # Z

    .line 60
    iput-boolean p1, p0, Lorg/yaml/snakeyaml/LoaderOptions;->wrappedToRootException:Z

    .line 61
    return-void
.end method
