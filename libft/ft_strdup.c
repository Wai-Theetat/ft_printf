/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strdup.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tdharmar <tdharmar@student.42bangkok.co    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/06/16 15:14:27 by tdharmar          #+#    #+#             */
/*   Updated: 2025/06/16 15:14:27 by tdharmar         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strdup(const char *s)
{
	char	*dest;
	size_t	i;
	size_t	size;

	size = ft_strlen(s);
	dest = (char *)malloc(sizeof(char) * size + 1);
	if (!dest)
		return (NULL);
	i = 0;
	while (i < size)
	{
		dest[i] = s[i];
		i++;
	}
	dest[i] = '\0';
	return (dest);
}
