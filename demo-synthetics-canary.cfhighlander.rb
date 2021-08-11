CfhighlanderTemplate do

    Parameters do
        ComponentParam 'URL'
        ComponentParam 'BucketName'
    end

    Component name: 'synthetics-canary', template: 'synthetics-canary', render: Inline do
        parameter name: 'URL', value: Ref('URL')
        parameter name: 'BucketName', value: Ref('BucketName')
    end
    Component name: 's3', template: 's3', render: Inline do
        parameter name: 'BucketName', value: Ref('BucketName')
    end

end